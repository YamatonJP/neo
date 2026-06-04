#!/bin/bash
# コミット前の確定的チェック。テストが失敗したらコミットをブロックする(exit 2)。
#
# ★プロジェクトに合わせてカスタマイズすること★
# 下の自動検出はあくまでフォールバック。チェックコマンドが決まったら直接書き換える。

INPUT=$(cat)  # stdin に hook の JSON が来る(ここでは未使用)

run_check() {
  local label="$1"; shift
  echo "pre-commit: $label を実行中..." >&2
  if ! "$@" >/dev/null 2>&1; then
    echo "pre-commit: $label が失敗したためコミットをブロックしました。修正してから再度コミットしてください。" >&2
    exit 2
  fi
}

# --- プロジェクト固有のチェックをここに書く(例) ---
# run_check "lint" npm run lint
# run_check "test" npm test

# --- フォールバック: プロジェクト種別を自動検出 ---
if [ -f package.json ] && grep -q '"test"' package.json; then
  run_check "npm test" npm test --silent
elif [ -f Makefile ] && grep -q '^test:' Makefile; then
  run_check "make test" make test
elif [ -f Cargo.toml ]; then
  run_check "cargo test" cargo test --quiet
elif [ -f go.mod ]; then
  run_check "go test" go test ./...
elif [ -f pyproject.toml ] || [ -f pytest.ini ]; then
  command -v pytest >/dev/null 2>&1 && run_check "pytest" pytest -q
fi

exit 0  # 0 + 無出力 = 判断なし(通常フロー継続)

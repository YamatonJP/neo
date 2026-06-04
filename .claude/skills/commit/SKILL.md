---
name: commit
description: 変更をレビューして規約に沿ったコミットを作成する
disable-model-invocation: true
allowed-tools: Bash(git add *) Bash(git commit *) Bash(git status *) Bash(git diff *) Bash(git log *)
---

## 現在の状態

!`git status --short`

## 手順

$ARGUMENTS をコミットする(引数がなければ全変更が対象)。

1. `git status` と `git diff HEAD` で変更を確認する。
2. **論理的に独立した変更が混ざっていたら分割を提案する**(1コミット = 1つの意図)。
3. コミットメッセージを作成する:
   - 形式: `<type>: <要約>`(type: feat / fix / refactor / docs / test / chore)
   - 要約は50字以内、命令形(「追加する」ではなく「追加」)
   - 本文に「なぜ」を書く(「何を」は diff で分かる)
   - `docs/features/<slug>/` に対応する成果物があれば同じコミットに含める
4. ステージしてコミットし、結果を報告する。

**注意**: `git commit` 実行時に pre-commit hook が発火し、プロジェクトのテストが走る(`.claude/hooks/pre-commit.sh`)。テストが失敗するとコミットはブロックされる。typo や設定変更など本筋と無関係な修正でも、テストがグリーンであることが前提。既存の理由でテストが赤い場合は先にそれを解消する。

## 禁止事項

- `git add -A` で無関係なファイルを巻き込まない(ステージ対象は明示的に指定)
- `--no-verify` の使用(hook を回避しない)
- ユーザーの指示なしの push

---
name: feature-status
description: docs/features 配下の全機能の進行状況(フェーズ・ステータス)を一覧表示する
context: fork
agent: Explore
---

`docs/features/` 配下の各ディレクトリを調査し、機能ごとの進行状況を報告せよ。`docs/features/_archive/` 配下は**実装完了済み**の機能なので、進行中とは分けて扱う。

1. **進行中**: `docs/features/` 直下の各 `<slug>/`(`_archive` を除く)について `requirements.md` と `design.md` の有無、およびファイル先頭のステータス行(draft / approved / implemented)を読む。
2. 以下の基準でフェーズを判定する:
   - requirements.md がない or draft → **Phase 1: 要件定義中**
   - requirements.md approved、design.md がない or draft → **Phase 2: 設計中**
   - design.md approved、動作確認結果が未記入 → **Phase 3-4: 実装・動作確認中**
   - design.md implemented or 動作確認結果が記入済み → **Phase 5: コミット/アーカイブ待ち**
3. 各 requirements.md の「未決事項」に残っている項目数も数える。
4. **アーカイブ済み**: `docs/features/_archive/` 配下のディレクトリ名(`<実装完了日>-<slug>/` 形式)を新しい順に列挙する(中身は読まなくてよい)。

## 出力形式

### 進行中

| 機能 | フェーズ | requirements | design | 未決事項 |
| :-- | :-- | :-- | :-- | :-- |

の表に続けて、注意が必要なもの(未決事項が多い、長期間 draft のまま等)を1〜3行で指摘する。

### アーカイブ済み(直近)

実装完了日の新しい順に最大10件を列挙(`<日付> <slug>`)。それ以上あれば総件数も添える。

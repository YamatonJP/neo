---
name: feature-status
description: docs/features 配下の全機能の進行状況(フェーズ・ステータス)を一覧表示する
context: fork
agent: Explore
---

`docs/features/` 配下の各ディレクトリを調査し、機能ごとの進行状況を報告せよ。

1. 各 `<slug>/` について `requirements.md` と `design.md` の有無、およびファイル先頭のステータス行(draft / approved / implemented)を読む。
2. 以下の基準でフェーズを判定する:
   - requirements.md がない or draft → **Phase 1: 要件定義中**
   - requirements.md approved、design.md がない or draft → **Phase 2: 設計中**
   - design.md approved、動作確認結果が未記入 → **Phase 3-4: 実装・動作確認中**
   - design.md implemented or 動作確認結果が記入済み → **Phase 5: 完了/コミット待ち**
3. 各 requirements.md の「未決事項」に残っている項目数も数える。

## 出力形式

| 機能 | フェーズ | requirements | design | 未決事項 |
| :-- | :-- | :-- | :-- | :-- |

の表に続けて、注意が必要なもの(未決事項が多い、長期間 draft のまま等)を1〜3行で指摘する。

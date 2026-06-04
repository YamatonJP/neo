---
paths:
  - "docs/features/**/*.md"
---

# 機能ドキュメントの規約

- `docs/features/<slug>/requirements.md` と `design.md` は `/feature` ワークフローの成果物。構成テンプレートは `.claude/skills/feature/` 配下を参照。
- ステータス行(draft / approved / implemented)を必ず維持する。承認ゲートを通過したら更新すること。
- 実装が設計から乖離したら、コードだけ直さず design.md も同時に更新する。
- 未決事項セクションを空にしない。決まっていないことは「決まっていない」と書く。

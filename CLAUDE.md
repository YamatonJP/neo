# プロジェクト概要

<!-- 各プロジェクトに導入後、このセクションを具体化する -->

- このリポジトリは機能開発ワークフローのテンプレート。導入手順は @README.md を参照。

## 技術スタック・コマンド

<!-- 導入先で具体的に書く。例:
- スタック: TypeScript / Next.js 15 / PostgreSQL
- ビルド: `npm run build` / テスト: `npm test` / lint: `npm run lint`
- 開発サーバー起動: `npm run dev`(http://localhost:3000)
-->

(未設定。導入先プロジェクトで記入すること)

## 機能開発のワークフロー

- 新機能の開発は必ず `/feature <依頼内容>` で開始する(要件定義→設計→実装→動作確認→コミットを承認ゲート付きで進行)。
- 成果物は `docs/features/<slug>/` に残す。途中再開も同じ `/feature` で行う。実装完了後は `docs/features/_archive/<実装完了日>-<slug>/` に移す(削除しない)。
- 要件・設計の議論には requirements-critic / design-reviewer サブエージェントを使う。大規模機能の要件は `/req-panel` で多視点レビュー。
- 要件の曖昧さは `/interpretation-mc`、設計のリスキーな仮定は `/spike-probe` で検証する(`/feature` に組み込み済み。単体でも使える)。
- 進行中の機能の一覧は `/feature-status`(fork 実行なのでコンテキストを汚さない)。
- コミットは `/commit` を使う(コミット前テストは hook で強制される)。

## 規約

<!-- 導入先で具体的に書く。例:
- インデント2スペース、命名は camelCase
- エラーは Result 型で返す(throw しない)
-->

(未設定。導入先プロジェクトで記入すること)

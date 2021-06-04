これは[Docusaurus 2](https://docusaurus.io/)の Docker 環境です。

# 立ち上げ方

```shell
$ make up
$ make exec
$ cd documents
$ yarn install
$ yarn start --host 0.0.0.0
```

# ディレクトリ・ファイル構成

基本的に編集する箇所は以下のファイルです。

```
documents
	┣━ /blog ━ 2020-06-04-filename.md  ------  ブログの記事
	┃
	┣━ /docs  -------------------------------  ドキュメント関連のフォルダ
	┃	┣━ /folder  -------------------------  カテゴリーごとにグループ化する
	┃	┃	┣━ _category_.json  -------------  カテゴリーの設定ファイル
	┃	┃	┗━ filename.md  -----------------  各ドキュメントファイル
	┃	┃
	┃	┗━ filename.md  ---------------------  各ドキュメントファイル
	┃
	┣━ /src  --------------------------------  トップページ等のフォルダ
	┃
	┣━ /static  -----------------------------  素材関係のフォルダ
	┃	┗━ /img  ----------------------------  画像格納
	┃
	┗━ docusaurus.config.js  ----------------  設定ファイル
```

# ブログ

ブログは基本的に `/blog` に `yyyy-mm-dd-filename.md` の形式でファイルを追加していく。
ブログ記事には以下のメタ情報を追加する

```md title="blog/yyyy-mm-dd-file.name"
---
slug: SlugName
title: PageTitle
author: AuthorName
author_title: AuthorTitle
author_url: AuthorHomePageURL
author_image_url: AuthorImageURL
tags: [タグ, Docusaurus]
---

記事のマークダウン
```

# ドキュメント

ドキュメントは基本的に `/docs` に `filename.md` の形式でファイルを追加していく。
グループを作る場合は、フォルダを追加し設定ファイル`_category_.json`を追加する。

## docs/folder/_category_.json

```json title="docs/folder/_category_.json"
{
  "label": "LabelName", // 左メニューの表示名
  "position": 1 // 左メニューの何番目か
}
```

## docs/filename.md

```md title="docs/filename.md"
---
sidebar_position: 1 // 記事の順番
---

ドキュメントのマークダウン
```

---

# Docusaurus README.md

## Installation

```console
yarn install
```

## Local Development

```console
yarn start
```

This command starts a local development server and opens up a browser window. Most changes are reflected live without having to restart the server.

## Build

```console
yarn build
```

This command generates static content into the `build` directory and can be served using any static contents hosting service.

## Deployment

```console
GIT_USER=<Your GitHub username> USE_SSH=true yarn deploy
```

If you are using GitHub pages for hosting, this command is a convenient way to build the website and push to the `gh-pages` branch.

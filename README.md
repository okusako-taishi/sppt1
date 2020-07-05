# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# sppt1 DB設計

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|nickname|string|null: false|
### Association
- has_many :posts
- has_many :comments
- has_many :likes

## postsテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|link|text|null: false|
|user_id|integer|null: false, foreign_key:true|
### Asoociation
- belongs_to :user
- has_many :comments
- has_many :likes

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text||
|user_id|integer|null: false, foreign_key: true|
|post_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :post

## likesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|post_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :post
## アプリ名 Find pro

### 概要
- ユーザーが投稿したurlを
・本番環境(デプロイ先　テストアカウント＆ID)
・制作背景(意図)
　⇒どんな課題や不便なことを解決するためにこのアプリを作ったのか。
・DEMO(gifで動画や写真を貼って、ビューのイメージを掴んでもらいます)
　⇒特に、デプロイがまだできていない場合はDEMOをつけることで見た目を企業側に伝えることができます。
・工夫したポイン
・使用技術(開発環境)
・課題や今後実装したい機能
・DB設計
### トップページ
- 調べたい投稿を検索する事ができる
<img width="1440" alt="Find pro トップページ" src="https://user-images.githubusercontent.com/64964206/86537078-74a7b880-bf27-11ea-9a68-d59db7ab1461.png"> 

### 投稿ページ
<img width="1440" alt="Find pro 投稿ページ" src="https://user-images.githubusercontent.com/64964206/86537425-f39df080-bf29-11ea-8cae-0bcb22e2c5e7.png">

### ログインページ
<img width="1440" alt="Find pro ログインページ" src="https://user-images.githubusercontent.com/64964206/86537520-89398000-bf2a-11ea-9eda-08e2aad48073.png">

### ユーザー編集ページ
<img width="1440" alt="Find pro ユーザー編集ページ" src="https://user-images.githubusercontent.com/64964206/86537539-a5d5b800-bf2a-11ea-8052-d603ce0aaf92.png">


## アプリ名 Find pro

### 概要
- プログラミングに関するエラーや、調べたい事を検索する事が出来る
### トップページ
- 調べたい投稿を検索する事ができる
- 投稿が役に立つと思ったらいいねが出来る
![Find pro トップページ動き変換](https://user-images.githubusercontent.com/64964206/86554288-2a0a5880-bf88-11ea-9c36-9a8b04461bec.gif)

### 投稿ページ
- タイトルをつけて自分の参考になった記事などのurlを投稿する事ができる
<img width="1440" alt="Find pro 投稿ページ" src="https://user-images.githubusercontent.com/64964206/86537425-f39df080-bf29-11ea-8cae-0bcb22e2c5e7.png">

### ログインページ
<img width="1440" alt="Find pro ログインページ" src="https://user-images.githubusercontent.com/64964206/86537520-89398000-bf2a-11ea-9eda-08e2aad48073.png">

### ユーザー編集ページ
<img width="1440" alt="Find pro ユーザー編集ページ" src="https://user-images.githubusercontent.com/64964206/86537539-a5d5b800-bf2a-11ea-8052-d603ce0aaf92.png">

## 本番環境
### URL
- https://sppt1.herokuapp.com/
### テストアカウント
- name: test2
- email: test2@gmail.com
- password: test2test2

## 制作背景(意図)
これから新しくプログラミングを学ぶ方々に何か今の自分のスキルで役立てられるものを制作したいと思いました。プログラミングを学習し始め、エラーや分からない事を検索する事がとても多く、問題解決の参考になる記事をもっと簡単に探す事が出来ないかと思い制作を考えました。
## 開発環境
- 言語:ruby
- DB:mysql
- ツール:VSCode(Visual Studio Code)
- サーバー:localhost:3000
## 課題や今後実装したい機能
- ユーザーマイページを作成し、お気に入りの投稿、自分の投稿を確認する事ができる機能
- お気に入りの数が大きいものから順に検索結果を表示する機能
- commentに関しては、実装するかどうが検討中
- ユーザーが投稿したものだけではデータが少ないので、その点を改善する事が今後の課題だと感じています。

# Find pro DB設計

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

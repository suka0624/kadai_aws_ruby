# README

■ 8/24の課題
「RubyonRailsでCRUDのRead処理を実装。画面描画、DBと繋ぐのも含む。」

■ 成果物
「Ruby on Rails 5 アプリケーションプログラム」
第3章のscaffoldingを利用したCRUD機能を持ったアプリケーション
＃とりあえず自身で変更した箇所はなく、著書のままです(^_^;)

　アプリ名：railbook
  利用テーブル：books

■ アプリ作成手順

// gitクローン作成
git clone https://github.com/suka0624/kadai_aws_ruby

cd kadai_aws_ruby/
mkdir 20190824_kadai
cd 20190824_kadai/

// 新規アプリ作成
rails new railbook

// scaffoldによるbooksテーブル関連のMVCファイル群作成
rails generate scaffold book isbn:string title:string price:integer publish:string published:date dl:boolean

// migrateを利用したテーブル作成
rails db:migrate

// ローカルサーバ起動
rails server

■ 動作確認

http://localhost:3000/books
にアクセスし、作成、編集、検索、削除(CRUD)を確認。

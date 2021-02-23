# RailsでGraphqlを動作させるサンプルアプリケーション

## 初回の起動コマンド
```shell
docker-compose build
docker-compose up
docker-compose exec web rails db:create
docker-comopse exec web rails db:migrate
```

## 起動コマンド
```shell
docker-compose up
```

## APIエンドポイント

- http://localhost:3000/graphql

  - このエンドポイントにPOSTリクエストを投げることでQuery、Mutationを実行することができる。

- http://localhost:3000/graphiql

  - 開発用のWebベースのGraphqlクライアントからリクエストをテストできる。

## Graphql関連のジェネレータ

オブジェクト型の定義ファイルを自動生成するコマンド
```shell
docker-compose exec web rails g graphql:object <属性名>:<型> ...
```

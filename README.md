# Dockerを使ってMySQLを勉強しましょう。

`docker-compose.yml`の置いてあるディレクトリをカレントディレクトリにした状態で以下のコマンドを実施。

```
# 初めて触る場合はこっちを使ってイメージを作成します。
docker-compose up --build -d

# 二回目はイメージが作成済みなのでこっちのコマンド
docker-compose up -d
```

mysqlコンテナが立ち上がり、起動時の準備が終わるまで待ちます。最低でも5秒は待ってください。

`docker-compose logs`を打つと色んなログが出てきますが

```
Version: '5.7.22'  socket: '/var/run/mysqld/mysqld.sock'  port: 0  MySQL Community Server (GPL)
```

と出ていれば、MySQLの準備が完了しているようです。

MySQLの準備が終わったら下記のコマンドを打ってください。

```
docker-compose exec mysql mysql -p
```

そうするとMySQLに侵入できます。

```
Enter password:
```

と聞かれるので`root`と打ってください。

以下のようなメッセージが出たら完了です。

```
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 2
Server version: 5.7.22 MySQL Community Server (GPL)

Copyright (c) 2000, 2018, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql>
```

MySQLから抜ける場合は`exit`と打ってください。

# 作業や勉強を切り上げるとき、やめるとき

`docker-compose.yml`の置いてあるディレクトリをカレントディレクトリにした状態で以下のコマンドを実施。

```
docker-compose down
```

以下のような文言が出ればコンテナは閉じられました。

```
Stopping mysql_ctr ... done
Removing mysql_ctr ... done
Removing network sql_default
```

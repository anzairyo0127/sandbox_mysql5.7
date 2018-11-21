CREATE DATABASE hoge;
USE hoge;

CREATE TABLE girls(girl_id INT(10),girl VARCHAR(200),toy_id INT(10));
CREATE TABLE toys(toy_id INT(20),toy VARCHAR(200));
INSERT INTO girls VALUES(1, "ジェン", 1),(2, "クレオ", 2),(3, "マンディ", 3);
INSERT INTO toys VALUES(1, "水鉄砲"),(2, "クレイジー・ストロー");
-- ここからDB操作
SELECT g.girl, t.toy FROM girls AS g LEFT OUTER JOIN toys t ON g.toy_id = t.toy_id;
/*

+--------------+--------------------------------+|
 girl         | toy                            |
+--------------+--------------------------------+|
 ジェン       | 水鉄砲                         |
| クレオ       | クレイジー・ストロー           |
| マンディ     | NULL                           |
+--------------+--------------------------------+

*/
DROP TABLE girls;
DROP TABLE toys;

CREATE TABLE girls(girl_id INT(10),girl VARCHAR(200),toy_id INT(10));
CREATE TABLE toys(toy_id INT(20),toy VARCHAR(200));

INSERT INTO girls VALUES(1, "ジェン", 1),(2, "クレオ", 1),(3, "マンディ", 3),(4, "マーサ", 3);
INSERT INTO toys VALUES(1, "水鉄砲"),(2, "クレイジー・ストロー"),(3, "スリンキー");

SELECT g.girl, t.toy FROM toys AS t LEFT OUTER JOIN girls AS g ON g.toy_id = t.toy_id;

/*
+--------------+--------------------------------+
| girl         | toy                            |
+--------------+--------------------------------+
| ジェン       | 水鉄砲                         |
| クレオ       | 水鉄砲                         |
| マンディ     | スリンキー                     |
| マーサ       | スリンキー                     |
| NULL         | クレイジー・ストロー           |
+--------------+--------------------------------+
*/

SELECT g.girl, t.toy FROM toys AS t NATURAL JOIN girls AS g ;

/*
+--------------+-----------------+
| girl         | toy             |
+--------------+-----------------+
| ジェン       | 水鉄砲          |
| クレオ       | 水鉄砲          |
| マンディ     | スリンキー      |
| マーサ       | スリンキー      |
+--------------+-----------------+
*/

CREATE TABLE girls(girl_id INT(10),girl VARCHAR(200),toy_id INT(10));
CREATE TABLE toys(toy_id INT(20) NOT NULL AUTO_INCREMENT PRIMARY KEY,toy VARCHAR(200));

INSERT INTO girls VALUES(1, "ジェン", 3),(2, "クレオ", 4),(3, "マンディ", 1);
INSERT INTO toys (toy) VALUES
("フラフープ"),
("バルサ・グライダー"),
("おもちゃの兵隊"),
("ハーモニカ"),
("野球カード"),
("ティンカートイ"),
("エッチ・ア・スケッチ"),
("スリンキー");

SELECT g.girl, t.toy FROM toys t RIGHT OUTER JOIN girls g ON g.toy_id = t.toy_id;

CREATE TABLE clown_info1(id INT(20) NOT NULL AUTO_INCREMENT PRIMARY KEY,name VARCHAR(200), boss_id VARCHAR(200));
CREATE TABLE clown_info2(id INT(20) NOT NULL AUTO_INCREMENT PRIMARY KEY,name VARCHAR(200), boss_id VARCHAR(200));

INSERT INTO clown_info1(name, boss_id) VALUES
("エルシー", 3),
("ピックルズ", 5),
("スナッグルズ", 10),
("ミスター・ホボ", 3),
("クララベル",10),
("スクーター",3),
("ジッポ",3),
("ベイブ",5),
("ボンゾ",5),
("ミスター・スニッフルズ",10);

INSERT INTO clown_info2(name, boss_id) VALUES
("エルシー", 3),
("ピックルズ", 5),
("スナッグルズ", 10),
("ミスター・ホボ", 3),
("クララベル",10),
("スクーター",3),
("ジッポ",3),
("ベイブ",5),
("ボンゾ",5),
("ミスター・スニッフルズ",10);

SELECT c1.name, c2.name AS boss_name FROM clown_info1 AS c1 INNER JOIN clown_info2 AS c2 WHERE c1.boss_id = c2.id;

/*
+-----------------------------------+-----------------------------------+
| name                              | boss_name                         |
+-----------------------------------+-----------------------------------+
| エルシー                          | スナッグルズ                      |
| ピックルズ                        | クララベル                        |
| スナッグルズ                      | ミスター・スニッフルズ            |
| ミスター・ホボ                    | スナッグルズ                      |
| クララベル                        | ミスター・スニッフルズ            |
| スクーター                        | スナッグルズ                      |
| ジッポ                            | スナッグルズ                      |
| ベイブ                            | クララベル                        |
| ボンゾ                            | クララベル                        |
| ミスター・スニッフルズ            | ミスター・スニッフルズ            |
+-----------------------------------+-----------------------------------+
*/


CREATE TABLE clown_info(id INT(20) NOT NULL AUTO_INCREMENT PRIMARY KEY,name VARCHAR(200), boss_id VARCHAR(200));
INSERT INTO clown_info(name, boss_id) VALUES
("エルシー", 3),
("ピックルズ", 5),
("スナッグルズ", 10),
("ミスター・ホボ", 3),
("クララベル",10),
("スクーター",3),
("ジッポ",3),
("ベイブ",5),
("ボンゾ",5),
("ミスター・スニッフルズ",10);
SELECT c1.name, c2.name AS boss_name FROM clown_info AS c1 INNER JOIN clown_info AS c2 WHERE c1.boss_id = c2.id;


/*441*/
SELECT contact_id FROM jobu_currect UNION SELECT salary FROM job_listing;
CREATE TABLE union_t AS SELECT contact_id FROM jobu_currect UNION SELECT salary FROM job_listing;
--SELECT jl.title FROM job_listing AS j1 INNER JOIN job_listing AS j2 j1.salary = MAX(j2.salary);
SELECT title FROM job_listing ORDER BY salary DESC LIMIT 1;

SELECT c1.name, (SELECT name FROM clown_info WHERE c1.boss_id = id) AS boss FROM clown_info AS c1;


CREATE VIEW ttt AS SELECT c1.name, (SELECT name FROM clown_info WHERE c1.boss_id = id) AS boss FROM clown_info AS c1;


create table piggy_bank
(
    id int AUTO_INCREMENT NOT NULL PRIMARY KEY,
    coin char(1) NOT NULL,
    coin_year char(4)  
);

INSERT INTO piggy_bank VALUES
(
    NULL, 'Q', 1950
),
(
    NULL, 'P', 1972
),
(
    NULL, 'N', 2005
),
(
    NULL, 'Q', 1999
),
(
    NULL, 'Q', 1981
),
(
    NULL, 'D', 1940
),
(
    NULL, 'Q', 1980
),
(
    NULL, 'P', 2001
),
(
    NULL, 'D', 1926
),
(
    NULL, 'P', 1999
);

CREATE VIEW pb_quarters AS SELECT * FROM piggy_bank WHERE coin = 'Q';
CREATE VIEW pb_dimes AS SELECT * FROM piggy_bank WHERE coin = 'D' WITH CHECK OPTION;

INSERT INTO pb_quarters VALUES (NULL, 'Q', 1993);
INSERT INTO pb_quarters VALUES (NULL, 'D', 1942);
INSERT INTO pb_dimes VALUES (NULL, 'Q', 2005);

DELETE FROM pb_quarters WHERE coin = 'N' OR coin = 'P' OR coin = 'D';

UPDATE pb_quarters SET coin = 'Q' WHERE coin = 'P';

SELECT * FROM piggy_bank;

DROP VIEW pb_dimes;

START TRANSACTION;
SELECT * FROM piggy_bank;
UPDATE piggy_bank SET coin = 'Q' WHERE coin = 'P';
SELECT * FROM piggy_bank;
ROLLBACK;
SELECT * FROM piggy_bank;

/*
+----+------+-----------+
| id | coin | coin_year |
+----+------+-----------+
|  1 | Q    | 1950      |
|  2 | Q    | 1972      |
|  3 | N    | 2005      |
|  4 | Q    | 1999      |
|  5 | Q    | 1981      |
|  6 | D    | 1940      |
|  7 | Q    | 1980      |
|  8 | Q    | 2001      |
|  9 | D    | 1926      |
| 10 | Q    | 1999      |
| 11 | Q    | 1993      |
| 12 | D    | 1942      |
+----+------+-----------+

+----+------+-----------+
| id | coin | coin_year |
+----+------+-----------+
|  1 | Q    | 1950      |
|  2 | P    | 1972      |
|  3 | N    | 2005      |
|  4 | Q    | 1999      |
|  5 | Q    | 1981      |
|  6 | D    | 1940      |
|  7 | Q    | 1980      |
|  8 | P    | 2001      |
|  9 | D    | 1926      |
| 10 | P    | 1999      |
| 11 | Q    | 1993      |
| 12 | D    | 1942      |
+----+------+-----------+

*/


START TRANSACTION;
SELECT * FROM piggy_bank;
UPDATE piggy_bank SET coin = 'Q' WHERE coin = 'P';
SELECT * FROM piggy_bank;
COMMIT;
SELECT * FROM piggy_bank;



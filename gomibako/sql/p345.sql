SELECT status FROM my_contacts GROUP BY status ORDER BY status;


ALTER TABLE my_contacts
ADD COLUMN interest1 VARCHAR(30) NOT NULL,
ADD COLUMN interest2 VARCHAR(30) NOT NULL,
ADD COLUMN interest3 VARCHAR(30) NOT NULL,
ADD COLUMN interest4 VARCHAR(30) NOT NULL;

ALTER TABLE test
ADD COLUMN interest1 VARCHAR(30) NOT NULL,
ADD COLUMN interest2 VARCHAR(30) NOT NULL,
ADD COLUMN interest3 VARCHAR(30) NOT NULL,
ADD COLUMN interest4 VARCHAR(30) NOT NULL;

ALTER TABLE test
ADD (interest5 VARCHAR(30) NOT NULL,interest6 VARCHAR(30) NOT NULL,interest7 VARCHAR(30) NOT NULL, interest8 VARCHAR(30) NOT NULL);


CREATE TABLE a (
    interest VARCHAR(30),
    interest1 VARCHAR(30),
    interest2 VARCHAR(30),
    interest3 VARCHAR(30),
    interest4 VARCHAR(30)
    );

INSERT INTO a (interest) VALUE ('めけめけ, バッホ, ドラゴンマン,ハイパーデュエル'),('バリアト, アルテマ, ひりゅう, えいゆう'),('だだｗだ, ロング万, ストロング, ボム'),('バブル, みん, だらしむ, どどど'),('ごりあ, ごりる, ごりり, 呉理郎');

UPDATE a SET interest4 = SUBSTRING_INDEX(interest, ',', 1);
UPDATE a SET interest = SUBSTR(interest, CHAR_LENGTH(interest4)+2);

CREATE TABLE toys (
    toy_id INT(5) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    toy VARCHAR(30)
    );

INSERT INTO toys (toy) VALUE ('フラフープ'),('バルサ・グライダー'),('おもちゃの兵隊'),('ハーモニカ'),('野球カード');

CREATE TABLE boys (
    boy_id INT(5) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    boy VARCHAR(30)
    );

INSERT INTO boys (boy) VALUE ('デイビー'),('ボビー'),('ビーバー'),('リッチー');

SELECT t.toy, b.boy FROM toys AS t CROSS JOIN boys AS b;

SELECT toy, boy FROM toys CROSS JOIN boys;

SELECT b1.boy, b2.boy FROM boys AS b1 CROSS JOIN boys AS b2;

SELECT * FROM toys CROSS JOIN boys;





P.365

SELECT mc.last_name, mc.firstname, mc.email pr.profession FROM my_contacts AS mc INNER JOIN profession AS pr ON mc.prof_id = pr.prof_id;

SELECT mc.last_name, mc.firstname, st.status FROM my_contacts AS mc INNER JOIN status AS st ON mc.status_id = pr.status_id;

SELECT mc.last_name, mc.firstname, zip.state FROM my_contacts AS mc INNER JOIN zip_code AS zip ON mc.zip_code = zip.zip_code;

SELECT mc.email, pr.profession FROM my_contacts AS mc NATURAL JOIN profession AS pr;

SELECT mc.last_name, mc.firstname, st.status FROM my_contacts AS mc INNER JOIN status AS st ON mc.status_id <> st.status_id;

SELECT mc.last_name, mc.firstname, zip.state FROM my_contacts AS mc NATURAL JOIN zip_code AS zip;



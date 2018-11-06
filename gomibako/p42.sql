CREATE DATABASE gregs_lists;

USE gregs_lists;

CREATE TABLE doughnut_list
(
    doughnut_name VARCHAR(10), 
    doughnut_type VARCHAR(6)
);


CREATE TABLE `my_contacts` (
  
  `last_name` varchar(30) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `birthday` date NOT NULL,
  `profession` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL,
  `interests` varchar(100) NOT NULL,
  `seeking` varchar(100) NOT NULL
);

CREATE TABLE my_contacts
( 
    contact_id INT NOT NULL AUTO_INCREMENT,
    last_name VARCHAR(30) NOT NULL,
    first_name VARCHAR(20) NOT NULL,
    email VARCHAR(50) NOT NULL,
    gender VARCHAR(1) NOT NULL,
    birthday DATE NOT NULL,
    profession VARCHAR(50) NOT NULL,
    location VARCHAR(50) NOT NULL,
    status VARCHAR(20) NOT NULL,
    interests VARCHAR(100) NOT NULL,
    seeking VARCHAR(100) NOT NULL,
    PRIMARY KEY (contact_id)
);

INSERT INTO my_contacts
(
    last_name, first_name, email, gender, birthday, profession, location, status, interests, seeking
)
VALUES
(
    'アンダーソン', 'ジリアン', 'jill_anderson@breakneckpizza.com', 'F', '1980-09-05', 'テクニカルライター', 'カリフォルニア州パロアルト', '独身', 'カヤック乗り、爬虫類', '恋人、友達'
);

INSERT INTO my_contacts
(
    first_name, email, profession, location
)
VALUES
(
    'バット', 'patpost@breakneckpizza.com', '郵便局員', 'ニュージャージー州'
);

DROP TABLE doughnut_list;

CREATE TABLE doughnut_list
(
    doughnut_name VARCHAR(10) NOT NULL, 
    doughnut_type VARCHAR(6) NOT NULL,
    doughnut_cost DEC(3,2) NOT NULL DEFAULT 1.00
);

INSERT INTO doughnut_list
(
    doughnut_name,
    doughnut_type
)
VALUES
(
    'アンデルセン',
    'リングタイプ'
);

INSERT INTO doughnut_list
(
    doughnut_name,
    doughnut_type,
    doughnut_cost
)
VALUES
(
    '遠野',
    'クルーラー',
    2.00
);


CREATE TABLE clown_info
(
    name VARCHAR(70),
    last_seen VARCHAR(70),
    apperance VARCHAR(70),
    activities VARCHAR(70)
);

INSERT INTO clown_info
VALUES
(
    'ボンゾ', 'ボールマート', '男性、女装・水玉模様のドレス', '歌、ダンス'
);

INSERT INTO clown_info
(
    name, apperance
)
VALUES
(
    'スニッフルズ',  '男性、緑と紫のスーツ、先のとがった鼻'
);

INSERT INTO clown_info
VALUES
(
    'ミスター・ホボ', 'ディクソンパーク', '男性、葉巻、黒髪、小さな帽子', 'バイオリン'
);

SELECT * FROM clown_info;


SELECT * FROM clown_info WHERE name = 'ボンゾ';


INSERT INTO clown_info
VALUES
(
    'ジッポ', 'ミルストーンモール', '女性、オレンジ色のスーツ、バギーパンツ', 'ダンス'
);

SELECT * FROM clown_info;


DELETE FROM clown_info WHERE activities = 'ダンス';

INSERT INTO clown_info 
VALUES
('クララベル', 'ベルモント・シニアセンター', '女性、ピンク色の噛み、巨大な花、青いドレス', '大声を上げる、ダンス');

INSERT INTO clown_info 
VALUES
('クララベル', 'ベルモント・シニアセンター', '女性、ピンク色の噛み、巨大な花、青いドレス', 'ダンス');

SELECT * FROM clown_info;

DELETE FROM clown_info WHERE name = 'クララベル' AND activities = '大声を上げる、ダンス';

P.136
INSERT INTO drink_info VALUES('キスオンザリップス', 5.5, 42.5, '紫', 'Y', 170 );
DELETE FROM drink_info WHERE drink_name = 'キスオンザリップス' AND calories = '171'

SELECT * FROM drink_info WHERE calor = '黄';

UPDATE doughnut

INSERT INTO doughnut_list
(
    doughnut_name,
    doughnut_type,
    doughnut_cost
)
VALUES
(
    '遠野',
    'クルーラー',
    2.00
);

UPDATE doughnut_list SET doughnut_name = 'レシートリザード' WHERE doughnut_name = '遠野';

UPDATE doughnut_list SET doughnut_cost = doughnut_cost + 1 WHERE doughnut_name = 'アンデルセン';

CREATE TABLE my_contactx
( 
    contact_id INT NOT NULL AUTO_INCREMENT,
    location VARCHAR(50) NOT NULL,
    city VARCHAR(50),
    state VARCHAR(50),
    PRIMARY KEY (contact_id)
);







P.160
SELECT * FROM fish_info WHERE location LIKE 'ニュージャージー州%';
SELECT * FROM fish_records WHERE share = 'ニュージャージー州';

P.189
CREATE TABLE entries
(
    id INT NOT NULL AUTO_INCREMENT,
    last_name VARCHAR(20) NOT NULL,
    first_name VARCHAR(20) NOT NULL,
    PRIMARY KEY(id)
);

INSERT INTO entries(id, first_name, last_name)
VALUES (NULL, 'マルシア', 'ブレイディ');

INSERT INTO entries(id, first_name, last_name)
VALUES (1, 'ジャン', 'ブレイディ');

INSERT INTO entries(id, first_name, last_name)
VALUES (2, 'ボビー', 'ブレイディ');

INSERT INTO entries(first_name, last_name)
VALUES ('シンディ', 'ブレイディ');

INSERT INTO entries(id, first_name, last_name)
VALUES (99, 'ピーター', 'ブレイディ');

ALTER TABLE entries 
ADD COLUMN arm VARCHAR(20) NOT NULL;

ALTER TABLE entries
ADD COLUMN id INT NOT NULL AUTO_INCREMENT,
ADD PRIMARY KEY (id);


ALTER TABLE my_contacts ADD CULUMN phon_number CHAR(10) NOT NULL AFTER first_name;

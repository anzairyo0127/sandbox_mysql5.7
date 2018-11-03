CREATE DATABASE gregs_lists;

USE gregs_lists;

CREATE TABLE doughnut_list
(
    doughnut_name VARCHAR(10), 
    doughnut_type VARCHAR(6)
);


CREATE TABLE my_contacts
( 
    last_name VARCHAR(30) NOT NULL,
    first_name VARCHAR(20) NOT NULL,
    email VARCHAR(50) NOT NULL,
    gender VARCHAR(1) NOT NULL,
    birthday DATE NOT NULL,
    profession VARCHAR(50) NOT NULL,
    location VARCHAR(50) NOT NULL,
    status VARCHAR(20) NOT NULL,
    interests VARCHAR(100) NOT NULL,
    seeking VARCHAR(100) NOT NULL
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

P.160
SELECT * FROM fish_info WHERE location LIKE 'ニュージャージー州%';
SELECT * FROM fish_records WHERE share = 'ニュージャージー州';


CREATE DATABASE gregs_lists;

USE gregs_lists;

CREATE TABLE test(
    test_char VARCHAR(30)
);

INSERT INTO test (test_char)
VALUES
('0'),('1'),('2'),('3'),
('A'),('B'),('C'),('D'),
('a'),('b'),('c'),('d'),
('!'),('@'),('#'),('$'),
('%'),('^'),('&'),('*'),
('('),(')'),('-'),('_'),
('+'),('='),('['),(']'),
('{'),('}'),(';'),(':'),
('\''),('\"'),('\\'),('|'),
('\`'),('~'),(','),('.'),
('<'),('>'),('/'),('?'),
('ｱ'),('ｲ'),('ｳ'),('ｴ'),
('あ'),('い'),('う'),('え'),
('ア'),('イ'),('ウ'),('エ'),
('亜'),('居'),('兎'),('絵'),
('０'),('１'),('２'),('３'),
(NULL);










-----------------------
CREATE TABLE movie_list
(
    movie_id INT NOT NULL AUTO_INCREMENT,
    doughnut_name VARCHAR(10), 
    doughnut_type VARCHAR(6),
);


ALTER TABLE movie_list ADD COLUMN category VARCHAR(30);




+-----------+
| test_char |
+-----------+
| NULL      |
| !         |
| "         |
| #         |
| $         |
| %         |
| &         |
| '         |
| (         |
| )         |
| *         |
| +         |
| ,         |
| -         |
| .         |
| /         |
| 0         |
| 1         |
| 2         |
| 3         |
| :         |
| ;         |
| <         |
| =         |
| >         |
| ?         |
| @         |
| a         |
| A         |
| B         |
| b         |
| C         |
| c         |
| D         |
| d         |
| [         |
| \         |
| ]         |
| ^         |
| _         |
| `         |
| {         |
| |         |
| }         |
| ~         |
| あ        |
| い        |
| う        |
| え        |
| ア        |
| イ        |
| ウ        |
| エ        |
| 亜        |
| 兎        |
| 居        |
| 絵        |
| ｱ         |
| ｲ         |
| ｳ         |
| ｴ         |
+-----------+

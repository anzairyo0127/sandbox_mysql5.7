CREATE DATABASE db;

USE db;

CREATE TABLE super_heros
( 
    name VARCHAR(50),
    power VARCHAR(50),
    weekness VARCHAR(50),
    city VARCHAR(50),
    country VARCHAR(50),
    arch_enemy_id INT(5),
    arch_enemy_city VARCHAR(50),
    initials VARCHAR(50)

);

INSERT INTO super_heros
VALUE
('スーパートラッシュマン', '早く掃除する', '漂白剤', 'ゴダム', 'ST', 4, 'ゴダム'),
('ブローカー', '無から金を儲ける', NULL, 'ニューヨーク', 'TB', 8, 'ニューアーク'),
()
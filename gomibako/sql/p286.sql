SELECT * FROM my_contacts
WHERE gender = '女性' 
AND status = '独身' 
AND city = 'マサチューセッツ州'
AND birthday > '1950-03-02'
AND birthday < '1960-03-02';
AND SUBSTRING_INDEX(interests,',',1) = '動物';

SELECT * FROM my_contacts

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

CREATE TABLE interests (
    int_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    interest VARCHAR(50) NOT NULL,
    contact_id INT NOT NULL,
    CONSTRAINT my_contacts_contact_id_fk 
    FOREIGN KEY (contact_id)
    REFERENCES my_contacts (contact_id)
);
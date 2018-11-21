REVOKE INSERT,DELETE ON locations FROM elsie;
REVOKE INSERT,DELETE,UPDATE ON clown_info FROM elsie;
REVOKE INSERT ON activities FROM elsie;
REVOKE DELETE GRANT OPTION ON info_location FROM elsie CASCADE;
REVOKE INSERT(location), DELETE ON location FROM elsie;

SET PASSWORD FOR 'root'@'localhost' = PASSWORD('homuhomu');

CREATE USER frank IDENTIFIED BY 'hogehoge'
CREATE USER jim IDENTIFIED BY 'piyopiyo'
CREATE USER joe IDENTIFIED BY 'fubefube'

GRANT SELECT,DELETE ON job_desired TO frank;
GRANT SELECT ON my_contacts TO frank;
GRANT SELECT,INSERT,UPDATE ON gregs_lists.* TO gim;
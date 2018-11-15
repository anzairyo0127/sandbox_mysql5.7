--1.1--
SELECT AVG(jc.salary) FROM job_current AS jc WHERE title = 'Web開発者';
--1.2--
SELECT mc.first_name, mc.last_name, jc.salary FROM my_contacts AS mc NATURAL JOIN job_current AS jc WHERE title = 'Web開発者';
--1.3--
SELECT mc.first_name, mc.last_name, jc.salary, jc.salary - (SELECT AVG(jc.salary) FROM job_current AS jc WHERE title = 'Web開発者') FROM my_contacts AS mc NATURAL JOIN job_current AS jc WHERE title = 'Web開発者';

--p.404 1.1--
SELECT title FROM job_listing WHERE salary = (SELECT MAX(salary) FROM job_listing );
--p.404 1.2--
SELECT mc.first_name, mc.first_name, jc.salary FROM my_contacts AS mc NATURAL JOIN job_current AS jc WHERE jc.salary > (SELECT AVG(salary) FROM job_current );
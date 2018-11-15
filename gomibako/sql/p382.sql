SELECT mc.first_name, mc.last_name FROM my_contacts AS mc NATURAL JOIN job_desired AS jd 
WHERE jd.title = 'Web開発者' AND jd.salaroy_low < 105000;


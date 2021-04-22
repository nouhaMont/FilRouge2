   
winpty mysql.exe -u root  -se "CREATE database tpproject"
winpty mysql.exe -u root -D "tpproject" -se "CREATE TABLE triangle (
  id int(11) NOT NULL,
  cote_a int(10) UNSIGNED NOT NULL,
  cote_b int(10) UNSIGNED NOT NULL,
  cote_c int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;"
   
   
   
for i in `seq 1 505`;
do

winpty mysql.exe -u root -D "tpproject" -se "INSERT INTO triangle( cote_a, cote_b, cote_c) VALUES ((RAND() * 100) , (RAND() * 100) ,(RAND() * 100))"
       
done



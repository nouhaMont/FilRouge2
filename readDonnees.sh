
echo "les triangles isoscèles :"
echo "==========================="
winpty mysql.exe -u root -D "tpproject" -se "SELECT * FROM triangle WHERE (cote_a=cote_b AND cote_a!=cote_c) OR (cote_a=cote_c AND cote_a!= cote_b) OR (cote_b= cote_c AND cote_b!=cote_a)"

echo "les triangles equilaterals :"
echo "==========================="
winpty mysql.exe -u root -D "tpproject" -se "SELECT * FROM triangle WHERE cote_a=cote_b AND cote_b=cote_c"

echo "les triangles scalènes :"
echo "==========================="
winpty mysql.exe -u root -D "tpproject" -se "SELECT * FROM triangle WHERE cote_a != cote_b AND cote_b != cote_c AND cote_a != cote_c"

echo "==========================="





SQL_HW_1
������� .sql ���� � ������� ��� ������ �������� �������� sql ������ ������� �������� �������.

 1. ������� ��� ���� � ��� ������.
 
    SELECT * FROM students;
    
 2. ������� ���� ��������� � �������
 
    SELECT name AS students FROM students; 
    
 3. ������� ������ Id �������������
 
    SELECT Id FROM students;
    
 4. ������� ������ ��� �������������
 
    SELECT name FROM students;
    
 5. ������� ������ email �������������
 
    SELECT email FROM students;
    
 6. ������� ��� � email �������������
 
    SELECT name, email FROM students;
    
 7. ������� id, ���, email � ���� �������� ������������� 
 
    SELECT Id, name, email, created_on FROM students;
    
 8. ������� ������������� ��� password 12333 
 
    SELECT name, password FROM students
    WHERE password = '12333';
 
 9. ������� ������������� ������� ���� ������� 2021-03-26 00:00:00
 
    SELECT name, created_on FROM students
    WHERE created_on  = '2021-03-26 00:00:00';
    
 10. ������� ������������� ��� � ����� ���� ����� ����
 
     SELECT name, created_on FROM students
     WHERE name LIKE '%Anna%';
     
 11. ������� ������������� ��� � ����� � ����� ���� 8
 
     SELECT name FROM students
     WHERE name  LIKE '%8';
     
 12. ������� ������������� ��� � ����� � ���� ����� �
 
     SELECT name FROM students
     WHERE name  LIKE '%a%';
     
 13. ������� ������������� ������� ���� ������� 2021-07-12 00:00:00
 
     SELECT name, created_on FROM students
     WHERE created_on  = '2021-07-12 00:00:00';
     
 14. ������� ������������� ������� ���� ������� 2021-07-12 00:00:00 � ����� ������ 1m313
 
     SELECT name, password, created_on FROM students
     WHERE created_on  = '2021-07-12 00:00:00'
     AND password = '1m313';
     
 15. ������� ������������� ������� ���� ������� 2021-07-12 00:00:00 � � ������� � ����� ���� ����� Andrey
 
     SELECT name, created_on FROM students
     WHERE created_on  = '2021-07-12 00:00:00'
     AND name LIKE '%Andrey%';
     
 16. ������� ������������� ������� ���� ������� 2021-07-12 00:00:00 � � ������� � ����� ���� ����� 8
 
     SELECT name, created_on FROM students
     WHERE created_on  = '2021-07-12 00:00:00'
     AND name LIKE '%8%';
     
 17. ������� ������������ � ������� id ����� 110
 
     SELECT name, id FROM students
     WHERE id = '110';
     
 18. ������� ������������ � ������� id ����� 153
 
     SELECT name, id FROM students
     WHERE id = '153';
     
 19. ������� ������������ � ������� id ������ 140
 
     SELECT name, id FROM students
     WHERE Id > '140';
     
 20. ������� ������������ � ������� id ������ 130
 
     SELECT name, id FROM students
     WHERE Id < '130';
     
 21. ������� ������������ � ������� id ������ 127 ��� ������ 188
 
     SELECT name, id FROM students
     WHERE Id < '127' or id > '180';
     
 22. ������� ������������ � ������� id ������ ���� ����� 137
 
     SELECT name, id FROM students
     WHERE Id <= '137';
     
 23. ������� ������������ � ������� id ������ ���� ����� 137
 
     SELECT name, id FROM students
     WHERE Id >= '137';
     
 24. ������� ������������ � ������� id ������ 180 �� ������ 190
 
     SELECT name, id FROM students
     WHERE Id > '180' AND id < '190';
     
 25. ������� ������������ � ������� id ����� 180 � 190
 
     SELECT name, id FROM students
     WHERE Id BETWEEN '180' AND '190';
     
 26. ������� ������������� ��� password ����� 12333, 1m313, 123313
 
     SELECT name, password FROM students
     WHERE password = '12333' OR password = '1m313' OR password = '123313';
     
 27. ������� ������������� ��� created_on ����� 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
 
     SELECT name, created_on  FROM students
     WHERE created_on  = '2020-10-03 00:00:00' OR created_on = '2021-05-19 00:00:00' OR created_on = '2021-03-26 00:00:00';
     
 28. ������� ����������� id 
 
     SELECT MIN(id) FROM students;
     
 29. ������� ������������.
 
     SELECT MAX(id) FROM students;
     
 30. ������� ���������� �������������
 
     SELECT COUNT(name) FROM students;
     
 31. ������� id ������������, ���, ���� �������� ������������. ������������� �� ������� ����������� ���� ���������� �������������.
 
     SELECT id, name, created_on  FROM students
     ORDER BY created_on ASC;
     
 32. ������� id ������������, ���, ���� �������� ������������. ������������� �� ������� �������� ���� ���������� �������������.
 
     SELECT id, name, created_on  FROM students
     ORDER BY created_on DESC;
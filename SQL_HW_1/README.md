###SQL_HW_1
Создать .sql файл в котором под каждой командой напишите sql запрос который выполнит команду.



1. Вывести все поля и все строки.

   `SELECT * FROM students;`

2. Вывести всех студентов в таблице

   `SELECT name AS students FROM students;`

3. Вывести только Id пользователей

   `SELECT Id FROM students;`

4. Вывести только имя пользователей

   `SELECT name FROM students;`

5. Вывести только email пользователей

   `SELECT email FROM students;`

6. Вывести имя и email пользователей

   `SELECT name, email FROM students;`

7. Вывести id, имя, email и дату создания пользователей

   `SELECT Id, name, email, created_on FROM students;`

8. Вывести пользователей где password 12333

   `SELECT name, password FROM students
    WHERE password = '12333';`

9. Вывести пользователей которые были созданы 2021-03-26 00:00:00

   `SELECT name, created_on FROM students
    WHERE created_on  = '2021-03-26 00:00:00';`

10. Вывести пользователей где в имени есть слово Анна

    `SELECT name, created_on FROM students
     WHERE name LIKE '%Anna%';`

11. Вывести пользователей где в имени в конце есть 8

    `SELECT name FROM students
     WHERE name  LIKE '%8';`

12. Вывести пользователей где в имени в есть буква а

    `SELECT name FROM students
     WHERE name  LIKE '%a%';`

13. Вывести пользователей которые были созданы 2021-07-12 00:00:00

    `SELECT name, created_on FROM students
     WHERE created_on  = '2021-07-12 00:00:00';`

14. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и имеют пароль 1m313

    `SELECT name, password, created_on FROM students
     WHERE created_on  = '2021-07-12 00:00:00'
     AND password = '1m313';`

15. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть слово Andrey

    `SELECT name, created_on FROM students
     WHERE created_on  = '2021-07-12 00:00:00'
     AND name LIKE '%Andrey%';`

16. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть цифра 8

    `SELECT name, created_on FROM students
     WHERE created_on  = '2021-07-12 00:00:00'
     AND name LIKE '%8%';`

17. Вывести пользователя у которых id равен 110

    `SELECT name, id FROM students
     WHERE id = '110';`

18. Вывести пользователя у которых id равен 153

    `SELECT name, id FROM students
     WHERE id = '153';`

19. Вывести пользователя у которых id больше 140

    `SELECT name, id FROM students
     WHERE Id > '140';`

20. Вывести пользователя у которых id меньше 130

    `SELECT name, id FROM students
     WHERE Id < '130';`

21. Вывести пользователя у которых id меньше 127 или больше 188

    `SELECT name, id FROM students
     WHERE Id < '127' or id > '180';`

22. Вывести пользователя у которых id меньше либо равно 137

    `SELECT name, id FROM students
     WHERE Id <= '137';`

23. Вывести пользователя у которых id больше либо равно 137

    `SELECT name, id FROM students
     WHERE Id >= '137';`

24. Вывести пользователя у которых id больше 180 но меньше 190

    `SELECT name, id FROM students
     WHERE Id > '180' AND id < '190';`

25. Вывести пользователя у которых id между 180 и 190

    `SELECT name, id FROM students
     WHERE Id BETWEEN '180' AND '190';`

26. Вывести пользователей где password равен 12333, 1m313, 123313

    `SELECT name, password FROM students
    WHERE password = '12333' OR password = '1m313' OR password = '123313';`

27. Вывести пользователей где created_on равен 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00

    `SELECT name, created_on  FROM students
     WHERE created_on  = '2020-10-03 00:00:00' OR created_on = '2021-05-19 00:00:00' OR created_on = '2021-03-26 00:00:00';`

28. Вывести минимальный id

    `SELECT MIN(id) FROM students;`

29. Вывести максимальный.

    `SELECT MAX(id) FROM students;`

30. Вывести количество пользователей

    `SELECT COUNT(name) FROM students;`

31. Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку возрастания даты добавления пользоватлеля.

    `SELECT id, name, created_on  FROM students
     ORDER BY created_on ASC;`

32. Вывести id пользователя, имя, дату создания пользователя.
    Отсортировать по порядку убывания даты добавления пользоватлеля.

    `SELECT id, name, created_on  FROM students
     ORDER BY created_on DESC;`

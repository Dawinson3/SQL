
1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.

SELECT employee_name, salary_2.monthly_salary FROM employee_salary_1
JOIN employees_1 ON employee_salary_1.employee_id = employees_1.id 
JOIN salary_2 ON employee_salary_1.salary_id = salary_2.id
ORDER BY monthly_salary ASC;

2. Вывести всех работников у которых ЗП меньше 2000.

SELECT employee_name, salary_2.monthly_salary FROM employee_salary_1 
JOIN employees_1 ON employee_salary_1.employee_id = employees_1.id 
JOIN salary_2 ON employee_salary_1.salary_id = salary_2.id
WHERE monthly_salary < '2000'
ORDER BY monthly_salary ASC;

3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

SELECT employee_id, employee_name, salary_id, monthly_salary
FROM employee_salary_1
LEFT JOIN employees_1 ON employee_salary_1.employee_id = employees_1.id
JOIN salary_2 ON employee_salary_1.salary_id = salary_2.id
WHERE employee_name IS null
ORDER BY salary_id;

4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

SELECT employee_id, employee_name, salary_id, monthly_salary
FROM employee_salary_1
LEFT JOIN employees_1 ON employee_salary_1.employee_id = employees_1.id
JOIN salary_2 ON employee_salary_1.salary_id = salary_2.id
WHERE monthly_salary < '2000' AND employee_name IS null 
ORDER BY salary_id;

5. Найти всех работников кому не начислена ЗП

SELECT employee_id, employee_name, monthly_salary, salary_id 
FROM employee_salary_1
JOIN salary_2 ON employee_salary_1.salary_id = salary_2.id
RIGHT JOIN employees_1 ON employee_salary_1.employee_id = employees_1.id
WHERE salary_2 IS NULL;

6. Вывести всех работников с названиями их должности

SELECT employee_id, employee_name, role_id, role_name FROM roles_employee_1
JOIN roles_1 ON roles_employee_1.role_id = roles_1.id
JOIN employees_1 ON roles_employee_1.employee_id = employees_1.id;

7. Вывести имена и должность только Java разработчиков.

SELECT employee_id, employee_name, role_id, role_name from roles_employee_1 
JOIN roles_1 ON roles_employee_1.role_id = roles_1.id
JOIN employees_1 ON roles_employee_1.employee_id = employees_1.id
WHERE role_name LIKE '%Java developer%';

8. Вывести имена и должность только Python разработчиков.

SELECT employee_id, employee_name, role_id, role_name FROM roles_employee_1 
JOIN roles_1 ON roles_employee_1.role_id = roles_1.id
JOIN employees_1 ON roles_employee_1.employee_id = employees_1.id
WHERE role_name LIKE '%Python%developer%';

9. Вывести имена и должность всех QA инженеров.

SELECT employee_id, employee_name, role_id, role_name FROM roles_employee_1 
JOIN roles_1 ONon roles_employee_1.role_id = roles_1.id
JOIN employees_1 ON roles_employee_1.employee_id = employees_1.id
where role_name LIKE '%QA%';

10. Вывести имена и должность ручных QA инженеров.

SELECT employee_id, employee_name, role_id, role_name FROM roles_employee_1 
JOIN roles_1 ON roles_employee_1.role_id = roles_1.id
JOIN employees_1 ON roles_employee_1.employee_id = employees_1.id
WHERE role_name LIKE '%Manual QA%';

11. Вывести имена и должность автоматизаторов QA

SELECT employee_id, employee_name, role_id, role_name FROM roles_employee_1 
JOIN roles_1 ON roles_employee_1.role_id = roles_1.id
JOIN employees_1 ON roles_employee_1.employee_id = employees_1.id
WHERE role_name LIKE '%Aut%QA%';

12. Вывести имена и зарплаты Junior специалистов

SELECT employee_name, role_name, monthly_salary
FROM roles_1
JOIN roles_employee_1 ON roles_1.id = roles_employee_1.role_id
JOIN employees_1 ON roles_employee_1.employee_id = employees_1.id
JOIN employee_salary_1 ON roles_employee_1.id = employee_salary_1.id
JOIN salary_2 ON employee_salary_1.salary_id = salary_2.id
WHERE role_name LIKE '%Junior%'
ORDER BY monthly_salary ASC;

13. Вывести имена и зарплаты Middle специалистов

SELECT employee_name, role_name, monthly_salary
FROM roles_1
JOIN roles_employee_1 ON roles_1.id = roles_employee_1.role_id
JOIN employees_1 ON roles_employee_1.employee_id = employees_1.id
JOIN employee_salary_1 ON roles_employee_1.id = employee_salary_1.id
JOIN salary_2 ON employee_salary_1.salary_id = salary_2.id
WHERE role_name LIKE '%Middle%'
ORDER BY monthly_salary ASC;

14. Вывести имена и зарплаты Senior специалистов

SELECT employee_name, role_name, monthly_salary
FROM roles_1
JOIN roles_employee_1 ON roles_1.id = roles_employee_1.role_id
JOIN employees_1 ON roles_employee_1.employee_id = employees_1.id
JOIN employee_salary_1 ON roles_employee_1.id = employee_salary_1.id
JOIN salary_2 ON employee_salary_1.salary_id = salary_2.id
WHERE role_name LIKE '%Senior%'
ORDER BY monthly_salary ASC;

15. Вывести зарплаты Java разработчиков

SELECT monthly_salary, role_name FROM employee_salary_1
JOIN salary_2 ON employee_salary_1.salary_id = salary_2.id
JOIN roles_1 ON employee_salary_1.id = roles_1.id
WHERE role_name LIKE '%Java developer%';

16. Вывести зарплаты Python разработчиков

SELECT monthly_salary, role_name FROM employee_salary_1
JOIN salary_2 ON employee_salary_1.salary_id = salary_2.id
JOIN roles_1 ON employee_salary_1.id = roles_1.id
WHERE role_name LIKE '%Python developer%';

17. Вывести имена и зарплаты Junior Python разработчиков

SELECT employee_name, role_name, monthly_salary
FROM roles_1
JOIN roles_employee_1 ON roles_1.id = roles_employee_1.role_id
JOIN employees_1 ON roles_employee_1.employee_id = employees_1.id
JOIN employee_salary_1 ON roles_employee_1.id = employee_salary_1.id
JOIN salary_2 ON employee_salary_1.salary_id = salary_2.id
WHERE role_name LIKE '%Junior%Python%developer%'
ORDER BY monthly_salary ASC;

18. Вывести имена и зарплаты Middle JS разработчиков

SELECT employee_name, role_name, monthly_salary
FROM roles_1
JOIN roles_employee_1 ON roles_1.id = roles_employee_1.role_id
JOIN employees_1 ON roles_employee_1.employee_id = employees_1.id
JOIN employee_salary_1 ON roles_employee_1.id = employee_salary_1.id
JOIN salary_2 ON employee_salary_1.salary_id = salary_2.id
WHERE role_name LIKE '%Middle%JavaScript%developer%'
ORDER BY monthly_salary ASC;

19. Вывести имена и зарплаты Senior Java разработчиков

SELECT employee_name, role_name, monthly_salary
FROM roles_1
JOIN roles_employee_1 ON roles_1.id = roles_employee_1.role_id
JOIN employees_1 ON roles_employee_1.employee_id = employees_1.id
JOIN employee_salary_1 ON roles_employee_1.id = employee_salary_1.id
JOIN salary_2 ON employee_salary_1.salary_id = salary_2.id
WHERE role_name LIKE '%Senior%Java developer%'
ORDER BY monthly_salary ASC;

20. Вывести зарплаты Junior QA инженеров

SELECT employee_name, role_name, monthly_salary
FROM roles_1
JOIN roles_employee_1 ON roles_1.id = roles_employee_1.role_id
JOIN employees_1 ON roles_employee_1.employee_id = employees_1.id
JOIN employee_salary_1 ON roles_employee_1.id = employee_salary_1.id
JOIN salary_2 ON employee_salary_1.salary_id = salary_2.id
WHERE role_name LIKE '%Junior%QA engineer%'
ORDER BY monthly_salary ASC;

--21. Вывести среднюю зарплату всех Junior специалистов

SELECT AVG(monthly_salary) AS AVG_Junior_salary
FROM roles_1
JOIN roles_employee_1 ON roles_1.id = roles_employee_1.role_id
JOIN employees_1 ON roles_employee_1.employee_id = employees_1.id
JOIN employee_salary_1 ON roles_employee_1.id = employee_salary_1.id
JOIN salary_2 ON employee_salary_1.salary_id = salary_2.id
WHERE role_name LIKE '%Junior%';

22. Вывести сумму зарплат JS разработчиков

SELECT SUM(monthly_salary) AS Sum_JS_developer_salary
FROM roles_1
JOIN roles_employee_1 ON roles_1.id = roles_employee_1.role_id
JOIN employees_1 ON roles_employee_1.employee_id = employees_1.id
JOIN employee_salary_1 ON roles_employee_1.id = employee_salary_1.id
JOIN salary_2 ON employee_salary_1.salary_id = salary_2.id
WHERE role_name LIKE '%JavaScript%developer%';

23. Вывести минимальную ЗП QA инженеров

SELECT MIN(monthly_salary) AS MIN_QA_salary
FROM roles_1
JOIN roles_employee_1 ON roles_1.id = roles_employee_1.role_id
JOIN employees_1 ON roles_employee_1.employee_id = employees_1.id
JOIN employee_salary_1 ON roles_employee_1.id = employee_salary_1.id
JOIN salary_2 ON employee_salary_1.salary_id = salary_2.id
WHERE role_name LIKE '%QA%';

24. Вывести максимальную ЗП QA инженеров

SELECT MAX(monthly_salary) AS MAX_QA_salary
FROM roles_1
JOIN roles_employee_1 ON roles_1.id = roles_employee_1.role_id
JOIN employees_1 ON roles_employee_1.employee_id = employees_1.id
JOIN employee_salary_1 ON roles_employee_1.id = employee_salary_1.id
JOIN salary_2 ON employee_salary_1.salary_id = salary_2.id
WHERE role_name LIKE '%QA%';

25. Вывести количество QA инженеров

SELECT count(role_name) AS count_QA_roles
FROM roles_1
JOIN roles_employee_1 ON roles_1.id = roles_employee_1.role_id
JOIN employees_1 ON roles_employee_1.employee_id = employees_1.id
JOIN employee_salary_1 ON roles_employee_1.id = employee_salary_1.id
JOIN salary_2 ON employee_salary_1.salary_id = salary_2.id
WHERE role_name LIKE '%QA%';

26. Вывести количество Middle специалистов.

SELECT COUNT(role_name) AS count_Middle_roles
FROM roles_1
JOIN roles_employee_1 ON roles_1.id = roles_employee_1.role_id
JOIN employees_1 ON roles_employee_1.employee_id = employees_1.id
JOIN employee_salary_1 ON roles_employee_1.id = employee_salary_1.id
JOIN salary_2 ON employee_salary_1.salary_id = salary_2.id
WHERE role_name LIKE '%Middle%';

27. Вывести количество разработчиков

SELECT COUNT(role_name) AS count_developer_roles
FROM roles_1
JOIN roles_employee_1 ON roles_1.id = roles_employee_1.role_id
JOIN employees_1 ON roles_employee_1.employee_id = employees_1.id
JOIN employee_salary_1 ON roles_employee_1.id = employee_salary_1.id
JOIN salary_2 ON employee_salary_1.salary_id = salary_2.id
WHERE role_name LIKE '%developer%';

28. Вывести фонд (сумму) зарплаты разработчиков.

SELECT SUM(monthly_salary) AS Sum_developer_salary
FROM roles_1
JOIN roles_employee_1 ON roles_1.id = roles_employee_1.role_id
JOIN employees_1 ON roles_employee_1.employee_id = employees_1.id
JOIN employee_salary_1 ON roles_employee_1.id = employee_salary_1.id
JOIN salary_2 ON employee_salary_1.salary_id = salary_2.id
WHERE role_name LIKE '%developer%';

29. Вывести имена, должности и ЗП всех специалистов по возрастанию

SELECT employee_name, role_name, monthly_salary
FROM roles_1
JOIN roles_employee_1 ON roles_1.id = roles_employee_1.role_id
JOIN employees_1 ON roles_employee_1.employee_id = employees_1.id
JOIN employee_salary_1 ON roles_employee_1.id = employee_salary_1.id
JOIN salary_2 ON employee_salary_1.salary_id = salary_2.id
ORDER BY monthly_salary ASC;

30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300

SELECT employee_name, role_name, monthly_salary
FROM roles_1
JOIN roles_employee_1 ON roles_1.id = roles_employee_1.role_id
JOIN employees_1 ON roles_employee_1.employee_id = employees_1.id
JOIN employee_salary_1 ON roles_employee_1.id = employee_salary_1.id
JOIN salary_2 ON employee_salary_1.salary_id = salary_2.id
WHERE monthly_salary between 1700 AND 2300
ORDER BY monthly_salary ASC;

31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
 
SELECT employee_name, role_name, monthly_salary
FROM roles_1
JOIN roles_employee_1 ON roles_1.id = roles_employee_1.role_id
JOIN employees_1 ON roles_employee_1.employee_id = employees_1.id
JOIN employee_salary_1 ON roles_employee_1.id = employee_salary_1.id
JOIN salary_2 ON employee_salary_1.salary_id = salary_2.id
WHERE monthly_salary < 2300
ORDER BY monthly_salary ASC;

32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000

SELECT employee_name, role_name, monthly_salary
FROM roles_1
JOIN roles_employee_1 ON roles_1.id = roles_employee_1.role_id
JOIN employees_1 ON roles_employee_1.employee_id = employees_1.id
JOIN employee_salary_1 ON roles_employee_1.id = employee_salary_1.id
JOIN salary_2 ON employee_salary_1.salary_id = salary_2.id
WHERE monthly_salary IN ('1100', '1500', '2000')
ORDER BY monthly_salary ASC;
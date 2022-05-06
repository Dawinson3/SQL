1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.

   `select employee_name, salary_2.monthly_salary from employee_salary_1
   join employees_1 on employee_salary_1.employee_id = employees_1.id 
   join salary_2 on employee_salary_1.salary_id = salary_2.id
   order by monthly_salary asc;`

2. Вывести всех работников у которых ЗП меньше 2000.

  `select employee_name, salary_2.monthly_salary from employee_salary_1 
   join employees_1 on employee_salary_1.employee_id = employees_1.id 
   join salary_2 on employee_salary_1.salary_id = salary_2.id
   where monthly_salary < '2000'
   order by monthly_salary asc;`

3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

  `select employee_id, employee_name, salary_id, monthly_salary
   from employee_salary_1
   left join employees_1 on employee_salary_1.employee_id = employees_1.id
   join salary_2 on employee_salary_1.salary_id = salary_2.id
   where employee_name is null
   order by salary_id;`

4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

  `select employee_id, employee_name, salary_id, monthly_salary
   from employee_salary_1
   left join employees_1 on employee_salary_1.employee_id = employees_1.id
   join salary_2 on employee_salary_1.salary_id = salary_2.id
   where monthly_salary < '2000' and employee_name is null 
   order by salary_id;`

5. Найти всех работников кому не начислена ЗП

  `select employee_id, employee_name, monthly_salary, salary_id 
   from employee_salary_1
   join salary_2 on employee_salary_1.salary_id = salary_2.id
   right join employees_1 on employee_salary_1.employee_id = employees_1.id
   where salary_2 IS NULL;`

6. Вывести всех работников с названиями их должности

  `select employee_id, employee_name, role_id, role_name from roles_employee_1
   join roles_1 on roles_employee_1.role_id = roles_1.id
   join employees_1 on roles_employee_1.employee_id = employees_1.id;`

7. Вывести имена и должность только Java разработчиков.

  `select employee_id, employee_name, role_id, role_name from roles_employee_1 
   join roles_1 on roles_employee_1.role_id = roles_1.id
   join employees_1 on roles_employee_1.employee_id = employees_1.id
   where role_name like '%Java developer%';`

8. Вывести имена и должность только Python разработчиков.

  `select employee_id, employee_name, role_id, role_name from roles_employee_1 
   join roles_1 on roles_employee_1.role_id = roles_1.id
   join employees_1 on roles_employee_1.employee_id = employees_1.id
   where role_name like '%Python%developer%';`

9. Вывести имена и должность всех QA инженеров.

  `select employee_id, employee_name, role_id, role_name from roles_employee_1 
   join roles_1 on roles_employee_1.role_id = roles_1.id
   join employees_1 on roles_employee_1.employee_id = employees_1.id
   where role_name like '%QA%';`

10. Вывести имена и должность ручных QA инженеров.

   `select employee_id, employee_name, role_id, role_name from roles_employee_1 
    join roles_1 on roles_employee_1.role_id = roles_1.id
    join employees_1 on roles_employee_1.employee_id = employees_1.id
    where role_name like '%Manual QA%';`

11. Вывести имена и должность автоматизаторов QA

   `select employee_id, employee_name, role_id, role_name from roles_employee_1 
    join roles_1 on roles_employee_1.role_id = roles_1.id
    join employees_1 on roles_employee_1.employee_id = employees_1.id
    where role_name like '%Aut%QA%';`

12. Вывести имена и зарплаты Junior специалистов

   `select employee_name, role_name, monthly_salary
    from roles_1
    join roles_employee_1 on roles_1.id = roles_employee_1.role_id
    join employees_1 on roles_employee_1.employee_id = employees_1.id
    join employee_salary_1 on roles_employee_1.id = employee_salary_1.id
    join salary_2 on employee_salary_1.salary_id = salary_2.id
    where role_name like '%Junior%'
    order by monthly_salary asc;`

13. Вывести имена и зарплаты Middle специалистов

   `select employee_name, role_name, monthly_salary
    from roles_1
    join roles_employee_1 on roles_1.id = roles_employee_1.role_id
    join employees_1 on roles_employee_1.employee_id = employees_1.id
    join employee_salary_1 on roles_employee_1.id = employee_salary_1.id
    join salary_2 on employee_salary_1.salary_id = salary_2.id
    where role_name like '%Middle%'
    order by monthly_salary asc;`

14. Вывести имена и зарплаты Senior специалистов

   `select employee_name, role_name, monthly_salary
    from roles_1
    join roles_employee_1 on roles_1.id = roles_employee_1.role_id
    join employees_1 on roles_employee_1.employee_id = employees_1.id
    join employee_salary_1 on roles_employee_1.id = employee_salary_1.id
    join salary_2 on employee_salary_1.salary_id = salary_2.id
    where role_name like '%Senior%'
    order by monthly_salary asc;`

15. Вывести зарплаты Java разработчиков

   `select monthly_salary, role_name from employee_salary_1
    join salary_2 on employee_salary_1.salary_id = salary_2.id
    join roles_1 on employee_salary_1.id = roles_1.id
    where role_name like '%Java developer%';`

16. Вывести зарплаты Python разработчиков

   `select monthly_salary, role_name from employee_salary_1
    join salary_2 on employee_salary_1.salary_id = salary_2.id
    join roles_1 on employee_salary_1.id = roles_1.id
    where role_name like '%Python developer%';`

17. Вывести имена и зарплаты Junior Python разработчиков

   `select employee_name, role_name, monthly_salary
    from roles_1
    join roles_employee_1 on roles_1.id = roles_employee_1.role_id
    join employees_1 on roles_employee_1.employee_id = employees_1.id
    join employee_salary_1 on roles_employee_1.id = employee_salary_1.id
    join salary_2 on employee_salary_1.salary_id = salary_2.id
    where role_name like '%Junior%Python%developer%'
    order by monthly_salary asc;`

18. Вывести имена и зарплаты Middle JS разработчиков

   `select employee_name, role_name, monthly_salary
    from roles_1
    join roles_employee_1 on roles_1.id = roles_employee_1.role_id
    join employees_1 on roles_employee_1.employee_id = employees_1.id
    join employee_salary_1 on roles_employee_1.id = employee_salary_1.id
    join salary_2 on employee_salary_1.salary_id = salary_2.id
    where role_name like '%Middle%JavaScript%developer%'
    order by monthly_salary asc;`

19. Вывести имена и зарплаты Senior Java разработчиков

   `select employee_name, role_name, monthly_salary
    from roles_1
    join roles_employee_1 on roles_1.id = roles_employee_1.role_id
    join employees_1 on roles_employee_1.employee_id = employees_1.id
    join employee_salary_1 on roles_employee_1.id = employee_salary_1.id
    join salary_2 on employee_salary_1.salary_id = salary_2.id
    where role_name like '%Senior%Java developer%'
    order by monthly_salary asc;`

20. Вывести зарплаты Junior QA инженеров

   `select employee_name, role_name, monthly_salary
    from roles_1
    join roles_employee_1 on roles_1.id = roles_employee_1.role_id
    join employees_1 on roles_employee_1.employee_id = employees_1.id
    join employee_salary_1 on roles_employee_1.id = employee_salary_1.id
    join salary_2 on employee_salary_1.salary_id = salary_2.id
    where role_name like '%Junior%QA engineer%'
    order by monthly_salary asc;`

21. Вывести среднюю зарплату всех Junior специалистов

   `select AVG(monthly_salary) as AVG_Junior_salary
    from roles_1
    join roles_employee_1 on roles_1.id = roles_employee_1.role_id
    join employees_1 on roles_employee_1.employee_id = employees_1.id
    join employee_salary_1 on roles_employee_1.id = employee_salary_1.id
    join salary_2 on employee_salary_1.salary_id = salary_2.id
    where role_name like '%Junior%';`

22. Вывести сумму зарплат JS разработчиков

   `select SUM(monthly_salary) as Sum_JS_developer_salary
    from roles_1
    join roles_employee_1 on roles_1.id = roles_employee_1.role_id
    join employees_1 on roles_employee_1.employee_id = employees_1.id
    join employee_salary_1 on roles_employee_1.id = employee_salary_1.id
    join salary_2 on employee_salary_1.salary_id = salary_2.id
    where role_name like '%JavaScript%developer%';`

23. Вывести минимальную ЗП QA инженеров

   `select MIN(monthly_salary) as MIN_QA_salary
    from roles_1
    join roles_employee_1 on roles_1.id = roles_employee_1.role_id
    join employees_1 on roles_employee_1.employee_id = employees_1.id
    join employee_salary_1 on roles_employee_1.id = employee_salary_1.id
    join salary_2 on employee_salary_1.salary_id = salary_2.id
    where role_name like '%QA%';`

24. Вывести максимальную ЗП QA инженеров

   `select MAX(monthly_salary) as MAX_QA_salary
    from roles_1
    join roles_employee_1 on roles_1.id = roles_employee_1.role_id
    join employees_1 on roles_employee_1.employee_id = employees_1.id
    join employee_salary_1 on roles_employee_1.id = employee_salary_1.id
    join salary_2 on employee_salary_1.salary_id = salary_2.id
    where role_name like '%QA%';`

25. Вывести количество QA инженеров

   `select count(role_name) as count_QA_roles
    from roles_1
    join roles_employee_1 on roles_1.id = roles_employee_1.role_id
    join employees_1 on roles_employee_1.employee_id = employees_1.id
    join employee_salary_1 on roles_employee_1.id = employee_salary_1.id
    join salary_2 on employee_salary_1.salary_id = salary_2.id
    where role_name like '%QA%';`

26. Вывести количество Middle специалистов.

   `select count(role_name) as count_Middle_roles
    from roles_1
    join roles_employee_1 on roles_1.id = roles_employee_1.role_id
    join employees_1 on roles_employee_1.employee_id = employees_1.id
    join employee_salary_1 on roles_employee_1.id = employee_salary_1.id
    join salary_2 on employee_salary_1.salary_id = salary_2.id
    where role_name like '%Middle%';`

27. Вывести количество разработчиков

   `select count(role_name) as count_developer_roles
    from roles_1
    join roles_employee_1 on roles_1.id = roles_employee_1.role_id
    join employees_1 on roles_employee_1.employee_id = employees_1.id
    join employee_salary_1 on roles_employee_1.id = employee_salary_1.id
    join salary_2 on employee_salary_1.salary_id = salary_2.id
    where role_name like '%developer%';`

28. Вывести фонд (сумму) зарплаты разработчиков.

   `select SUM(monthly_salary) as Sum_developer_salary
    from roles_1
    join roles_employee_1 on roles_1.id = roles_employee_1.role_id
    join employees_1 on roles_employee_1.employee_id = employees_1.id
    join employee_salary_1 on roles_employee_1.id = employee_salary_1.id
    join salary_2 on employee_salary_1.salary_id = salary_2.id
    where role_name like '%developer%';`

29. Вывести имена, должности и ЗП всех специалистов по возрастанию

   `select employee_name, role_name, monthly_salary
    from roles_1
    join roles_employee_1 on roles_1.id = roles_employee_1.role_id
    join employees_1 on roles_employee_1.employee_id = employees_1.id
    join employee_salary_1 on roles_employee_1.id = employee_salary_1.id
    join salary_2 on employee_salary_1.salary_id = salary_2.id
    order by monthly_salary asc;`

30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300

   `select employee_name, role_name, monthly_salary
    from roles_1
    join roles_employee_1 on roles_1.id = roles_employee_1.role_id
    join employees_1 on roles_employee_1.employee_id = employees_1.id
    join employee_salary_1 on roles_employee_1.id = employee_salary_1.id
    join salary_2 on employee_salary_1.salary_id = salary_2.id
    where monthly_salary between 1700 and 2300
    order by monthly_salary asc;`

31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
 
   `select employee_name, role_name, monthly_salary
    from roles_1
    join roles_employee_1 on roles_1.id = roles_employee_1.role_id
    join employees_1 on roles_employee_1.employee_id = employees_1.id
    join employee_salary_1 on roles_employee_1.id = employee_salary_1.id
    join salary_2 on employee_salary_1.salary_id = salary_2.id
    where monthly_salary < 2300
    order by monthly_salary asc;`

32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000

   `select employee_name, role_name, monthly_salary
    from roles_1
    join roles_employee_1 on roles_1.id = roles_employee_1.role_id
    join employees_1 on roles_employee_1.employee_id = employees_1.id
    join employee_salary_1 on roles_employee_1.id = employee_salary_1.id
    join salary_2 on employee_salary_1.salary_id = salary_2.id
    where monthly_salary in ('1100', '1500', '2000')
    order by monthly_salary asc;`

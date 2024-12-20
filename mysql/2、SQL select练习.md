# SQL select 
```sql
--  基本select语句习题
#1、查询员工12个月的工资总和，并起别名ANNUAL SALARY
select salary * (1 + IFNULL(commission_pct,0)) * 12 as "ANNUAL SALARY" from employees;
#2、查询employees表中去除重复的job_id以后的数据
SELECT DISTINCT job_id from employees;
#3、查询工资大于12000的员工姓名和工资
select CONCAT(first_name,' ', last_name) as full_name, salary from employees where salary > 12000;
#4、查询员工号为176的员工的姓名和部门号
select CONCAT(first_name,' ', last_name as full_name , department_id from employees where employee_id = 176;
#5、显示表departments的结构，并查询其中的全部数据
DESC departments;
select * from departments;

```

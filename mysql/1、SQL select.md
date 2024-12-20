# select

```sql
select 1 + 1, 3 * 2;
```

```sql
select 1 + 1, 3 * 2 from dual;  #dual 伪表
```

```sql
select * from employees;
select employee_id, last_name from employees;
```

```sql
-- 列的别名 as（alias简称）
-- 列的别名使用双引号"" 引起来
select employee_id emp_id, last_name as lname, department_id "部门id" from employees;
```

```sql
-- 去除重复行
select DISTINCT department_id from employees;
-- 报错
select salary,DISTINCT department_id from employees;
-- 没有实际意义
select DISTINCT department_id,salary from employees;
```

```sql
-- 空值参与运算，结果也一定是空
-- 空值：null
-- null不等于0，'','null'
select employee_id, salary as "月工资", salary * (1 + commission_pct) * 12 as "年工资", commission_pct 
from employees;

select employee_id, salary as "月工资", salary * (1 + IFNULL(commission_pct,0)) * 12 as "年工资", commission_pct 
from employees;
```

```sql
-- 着重号 ``
select * from `order`;
```

```sql
-- 显示表结构 DESCRIBE DESC
DESCRIBE employees;
```
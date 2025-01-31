-- 字符串存在隐式转换。如果转换数值不成功，则看做0
select 1=2,1 !=2,1='1',0='a'; select 1=2,1 !=2,1='1',1='a';
-- 两边都是字符串的话，则按照ANSI的比较规则进行比较
-- 只要有null参与判断，结果就为null


-- <=> 安全等于
select 1 <=> null , null <=> null;
select 1 = null , null = null;
-- 判断是否为null
select last_name, salary, commission_pct from employees where commission_pct is null;

select last_name, salary, commission_pct from employees where commission_pct ISNULL(commission_pct);


select LEAST('a','b','c','d'),GREATEST('a','b','c','d') from DUAL;

-- BETWEEN and   BETWEEN是下限，and 是上限，不能交换
-- not BETWEEN AND

-- % 代表不确定个数的字符（0个、1个或者多个）
-- 查询姓名中包含a和e的员工信息
SELECT last_name from employees where last_name like '%a%' and last_name like '%e%';
SELECT last_name from employees where last_name like '%a%e%' ;

SELECT last_name from employees where last_name like '%a%e%' or last_name
    like '%e%a%';

-- _代表一个不确定的字符
-- 查询第2个字符是'a'的员工信息
SELECT last_name from employees where last_name like '_a%';
-- \转移
-- 查询第二个字符是_且第三个字符是a的员工信息
select last_name from employees where last_name like '_\_a%';


-- 运算符课后练习
-- 查询工资不在5000到12000的员工的姓名和工资
SELECT last_name,salary from employees where salary not BETWEEN 5000 and 12000;
-- 查询在20或50号部门的员工姓名和部门号
SELECT last_name,department_id from employees where department_id in (20,50);
-- 查询公司中没有管理者的员工姓名和job_id
SELECT last_name,job_id from employees where manager_id is null;
-- 查询公司中没有奖金的员工姓名、工资和奖金级别
SELECT last_name, salary, commission_pct from employees where commission_pct is null;
-- 查询员工姓名的第三个字母是a的员工姓名
SELECT last_name from employees where last_name like '__a%';
-- 查询姓名中有字母a和k的员工姓名
select last_name FROM employees where last_name like '%a%' and last_name like '%k%';
-- 显示出表employees表中first_name以e结尾的员工信息
select first_name from employees where first_name like '%e';
-- 查询出表employees表中部门编号在80-100的员工姓名和工种
SELECT last_name, job_id from employees
where department_id BETWEEN 80 and 100;
-- 查询出表employees表中manager_id是100,101,110的员工姓名、工资、管理者id
select last_name, salary, manager_id
from employees
where manager_id in (100,101,110);

-- 排序分页课后练习题
-- 查询员工的姓名和部门号和年薪，按年薪降序，按姓名升序显示
select last_name, salary * 12 from employees order by salary * 12 desc, last_name asc;

-- 选择工资不在8000到12000的员工的姓名和工资，按工资降序，显示第21到40位置的数据
select last_name, salary from employees where salary not BETWEEN 8000 and 12000 order by salary desc limit 20,20;

-- 查询邮箱中包含e的员工信息，并按照邮箱的字节数降序，再按照部门号升序
select last_name,email,LENGTH(email) from employees where email LIKE '%e%' ORDER BY LENGTH(email) desc, department_id asc;


# 显示所有员工的姓名，部门号和部门名称
select e.last_name,e.department_id, d.department_name
from employees e  LEFT join departments d
                            on e.department_id = d.department_id;
# 查询90号部门员工的job_id和90号部门员工的location_id
select e.job_id, d.location_id
from employees e
         left join departments d on e.department_id = d.department_id
where e.department_id = 90
#查询所有有奖金的员工的last_name,department_name,location_id，city
SELECT e.last_name, d.department_name, d.location_id, l.city
from employees e
         left join departments d on d.department_id = e.department_id
         left join locations l on l.location_id = d.location_id
where e.commission_pct is not null;
#选择city在toronto工作的员工的last_name,job_id，department_id，department_name
select e.last_name, e.job_id, e.department_id,d.department_name
from  employees e
          join departments d on d.department_id = e.department_id
          join locations l on l.location_id = d.location_id
where l.city = 'Toronto';
#查询员工所在部门名称、部门地址、姓名、工作和工资，其中员工所在部门的部门名称为"executive"
select d.department_name,l.street_address,e.last_name,j.job_title,e.salary
from employees e
         join departments d on e.department_id = d.department_id
         join locations l on l.location_id = d.location_id
         join jobs j on j.job_id = e.job_id
where d.department_name = 'executive';
# 查询哪些部门没有员工
select d.department_id
from departments d
         left JOIN employees e on e.employee_id = d.department_id
where e.department_id is null;

#查询哪个城市没有部门
select l.city
from locations l
         left join departments d on d.location_id = l.location_id
where d.location_id is null;
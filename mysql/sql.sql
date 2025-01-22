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







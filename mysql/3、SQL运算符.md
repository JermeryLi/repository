# 运算符
## 算数运算符

```sql
-- 在SQL中，+没有连接的作用，就表示假发运算。此时，会将字符串转换为数值（隐式转换）
select 100 + '1' from dual;
```

```sql
-- null参与运算结果还是null
select 100 + null;
```

```sql
-- 取模
select 12 % 3;
```


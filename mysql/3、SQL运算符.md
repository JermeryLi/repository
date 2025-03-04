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

## 比较运算符

```sql
-- 字符串存在隐式转换。如果转换数值不成功，则看做0
-- 两边都是字符串的话，则按照ANSI的比较规则进行比较
-- 只要有null参与判断，结果就为null 

-- <=> 安全等于  为null而生

```

| 运算符      | 名称       |
| ----------- | ---------- |
| is null     | 为空       |
| is not null | 不为空     |
| least       | 最小孩子   |
| greatest    | 最大值     |
| between and | 两值之间   |
| isnull      | 为空       |
| in          | 属于       |
| not in      | 不属于     |
| like        | 模糊匹配   |
| regexp      | 正则表达式 |
| relike      | 正则表达式 |

-- % 代表不确定个数的字符（0个、1个或者多个）
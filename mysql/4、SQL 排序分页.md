# 排序
如果没有使用排序操作，默认情况下查询返回的数据是按照数据添加的顺序显示的

升序 ASC   (ascend)

降序 DESC  （descend）

排序操作关键词  order by

默认使用升序排列

可以使用列的别名进行排序，列的别名不能在where中使用。order by需要在where之后。


# 分页
Limit m,n

m代表起始数据序号 序号从0开始(m如省略，默认为0)

n数据条数

每页显示pageSize,显示第pageNo页

Limit (pageNo-1) * pageSize, pageSize;
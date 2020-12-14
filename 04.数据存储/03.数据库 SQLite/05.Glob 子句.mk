## GLOB 运算符是用来匹配通配符指定模式的文本值。

  如果搜索表达式与模式表达式匹配，GLOB 运算符将返回真（true），也就是 1。

  与 LIKE 运算符不同的是，GLOB 是大小写敏感的，对于下面的通配符，它遵循 UNIX 的语法。

  - 星号 （*）
  - 问号 （?）

  星号（*）代表零个、一个或多个数字或字符。
  问号（?）代表一个单一的数字或字符。

```
WHERE SALARY GLOB '200*'	
查找以 200 开头的任意值

WHERE SALARY GLOB '*200*'	
查找任意位置包含 200 的任意值

WHERE SALARY GLOB '?00*'	
查找第二位和第三位为 00 的任意值

WHERE SALARY GLOB '2??'	
查找以 2 开头，且长度至少为 3 个字符的任意值

WHERE SALARY GLOB '*2'	
查找以 2 结尾的任意值

WHERE SALARY GLOB '?2*3'	
查找第二位为 2，且以 3 结尾的任意值

WHERE SALARY GLOB '2???3'	
查找长度为 5 位数，且以 2 开头以 3 结尾的任意值
```


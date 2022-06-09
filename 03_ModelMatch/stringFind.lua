-- 用于在目标字符串中搜索指定的模式。
-- 如果查找成功，就返回两个值，
-- 分别是起始位置的索引和结束位置的索引，
-- 如果查找失败，则返回 nil 
s = "hello world"
i, j = string.find(s, "hello")
-- print(i, j)
-- print(string.sub(s, i, j))
print(string.find(s, "world"))
i, j = string.find(s, "l")
print(i, j)
print(string.find(s, "111"))

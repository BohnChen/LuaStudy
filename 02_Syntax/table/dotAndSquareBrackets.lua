-- . 运算符是 [] 运算符的语法糖
-- 这个函数我们看看他们的区别和联系
local t = {}
t["x"] = 3
local k = "x"
print(t[k]) -- equal with print(t["x"])

local x = "y"
t[x] = 4
print(t.x) -- equal with print(t["x"])


t["k"] = 5
t[k] = 6 -- equal with t["x"] = 6

print(t.x) -- print(t["x"]) 6
print(t.k) -- print(t["k"]) 5
print(t[k]) -- print(t["x"]) 6


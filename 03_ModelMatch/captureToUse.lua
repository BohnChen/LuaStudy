-- 可以使用 () 进行捕获，捕获后的内容可以继续使用
pair = "name = Anna"
key, value = string.match(pair, "(%a+)%s*=%s*(%a+)")
print(key)
print(value)
date = "Today is 2022/06/10"
d, m, y = string.match(date, "(%d+)/(%d+)/(%d+)")
print(d)
print(m)
print(y)

-- precent sign
-- % 后面添加数字可以用来纸袋捕获的结果
-- 比如 %1 表示捕获的第一个结果，以此类推
-- 特别的， %0 表示整个匹配
str = [[ then he said: "it's all right!" ]]

-- 下面这句的匹配规则暂时不明白，需要时候再看
q, quotedPart = string.match(str, "(['\"])(.-)%1")
print(q)
print(quotedPart)
-- 将每一个匹配到的值进行一个替换
print(string.gsub("hello Lua", "%a", "%0-%0"))
print(string.gsub("hello Lua", "(%a+)(%s*)(%a+)", "%3%2%1"))

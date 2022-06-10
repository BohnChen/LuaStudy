-- 控制基本单位的重复情况的字符
print(string.gsub("one, and two; and three", "%a+", "word"))
-- %d 匹配任一数字
print(string.match("the number 1298 is even", "%d+"))
-- */- 表示 0 到多次
-- % 表示转义字符
-- %s 表示任一空白字符
print(string.match("f((   ))", "%(%s*%)"))

-- - 是指最小匹配
print(string.match("/* hello*//* world */", "/%*.*%*/"))
print(string.match("/* hello*//* world */", "/%*.-%*/"))
-- ? 表示 0 到 1 次
print(string.match("+128", "[+-]?%d+"))
print(string.match("128", "[+-]?%d+"))
print(string.match("-128", "[+-]?%d+"))

-- ^表示开头
print(string.match("abc", "^%d%a+"))
print(string.match("1abc", "^%d%a+"))

-- $ 表示结尾
print(string.match("abc", "%a+%d$"))
print(string.match("abc1", "%a+%d$"))

-- %b 可以匹配一对字符中间的值 %lr
print(string.match("(a + b)(a - b) = a^2 - b^2", "%b()"))

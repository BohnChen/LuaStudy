-- 如果查找成功，返回与字符串相匹配的那部分字串。
s = "12345678"
pat = "..78"
print(string.match(s, pat))
s = "hello\n\t123HELLO,'''123'''  "
-- print(s)
pat = "%c123" -- %c 表示的是任一控制字符
print(string.match(s, pat))
pat = "%d"		-- %d 表示的是任一数字
print(string.match(s, pat))
pat = "%l"		-- %l 表示的是任意小写字符
print(string.match(s, pat))
pat = "%u"		-- %u 表示的任一大写字符
print(string.match(s, pat))
pat = "%p%p"	-- %p 表示的是任一标点符号
print(string.match(s, pat))
pat = "%s"		-- %s 表示的是任一空白字符
print(string.match(s, pat))
pat = "[a-z]" -- [] 对各个模式字符/范围集合求并集
print(string.match(s, pat))
pat = "[^a-z%s]" -- ^ 匹配任一上述集合的补集内的字符



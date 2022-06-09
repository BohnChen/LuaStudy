print("Hello")
print("Hello")
t = type {}
-- print t 字符串必须是常量，才能忽略 ()
print(t)

o = {
	para = 1
}

-- 等价于 o.func1 = function (self, arg1)
function o.func1(self, arg1)
	print(self.para, arg1)
end
o:func1(2) -- 等价于 o.func1(o,2)

-- unpack 可以将序列的所有元素转换成多个值，
-- 做到一个解包的效果
-- 利用 unpack 函数，我们可以给任意函数传入任意多个值
print(unpack{1, 2, 3})
a, b = unpack({1, 2, 3})
--
f = string.find
a = { "hello", "ll" }
print(f(unpack(a)))

-- 自己实现一个 unpack 函数

-- 多返回值只能作为赋值，传参，表构造器和 return 表达式的最右边一部分
-- 如果不满足，只能返回第一个
function g() 
	return 5,6,nil;
end

x, y, z = g()

print(x, y, z)

print(g(), 1)

print(1, g())

function g1() 
	return g(), 3
end

function g2()
	return 3, g()
end

print(g1())

print(g2())

-- string.format 不能直接将结果打印到屏幕上，
-- 所以可以利用可变参数将格式化和输出的功能合并

function luaPrintf(fmt, ...)
	return io.write(string.format(fmt, ...))
end

name = "Liming"
age = 22
luaPrintf("I am %s. I am %d\n", name, age)

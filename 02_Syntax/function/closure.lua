function a (x, y)
	print(x, y)
end
-- 等价于
a = function (x, y) print(x, y) end

--[[
	闭包的概念，可以这样理解：
		这个闭包是一个变量，一个函数就是变量
		函数调用时候，lua 虚拟机会找到闭包的内存位置，
		然后执行函数内部的指令
]]


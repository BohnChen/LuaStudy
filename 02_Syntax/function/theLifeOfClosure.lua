function newCounter()
	local count = 0
	return function()
		count = count + 1
		return count
	end
end

--[[
-- gc 负责垃圾回收，一旦被回收就再也没有机会被访问了
-- 所以此时，一次新的调用结束后，与另一个新的调用没有任何关系
-- 但是一个 local 变量的声明周期是函数结束，因此在这里它的可以累加的。
--]]
print(newCounter()())
print(newCounter()())
local c1 = newCounter()
print(c1())
print(c1())

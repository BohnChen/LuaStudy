function factory(t)
	local i = 0
	return function()
		i = i + 1
		return t[i]
	end
end

-- 调用匿名函数，匿名函数会捕获 i , 修改 i 的值，返回 t[i]
local tb = {1, 2, 3, 4, 5}
for element in factory(tb) do
	print(element)
end

function add(x, ...)
	local cnt = x or 0
	for i, v in ipairs({...}) do
		cnt = cnt + v
	end
	return cnt
end
print(add())
print(add(1))
print(add(1,2))
print(add(1,2,3))
print(add(1,2,3,4))

x, y, z = {1, 2, 3} 
print(x, y, z)-- 表的引用地址 nil nil

function present(a) 
	return unpack(a)
end

x, y, z = present({1, 2, 3})
print(x, y, z )

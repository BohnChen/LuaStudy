function add(...)
	local cnt = 0
	for i = 1, select('#', ...) do
		cnt = cnt + select(i, ...)
	end
	return cnt
end

print(add(1, 2))
print(add(1, 2, 3))
print(add(1, 2, 3, 4))
print(add(1, 2, 3, 4, 5))

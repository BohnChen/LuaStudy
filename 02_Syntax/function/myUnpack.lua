function myUnpack(t, i, n)
	i = i or 1
	n = n or #t
	if i <= n then
		return t[i], myUnpack(t, i + 1, n)
	end
end
a, b = myUnpack({1, 2, 3})
print(a, b)

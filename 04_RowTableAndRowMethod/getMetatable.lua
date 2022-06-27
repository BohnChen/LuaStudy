var = 123
t = getmetatable(val)
print(t)
var = "1234"
t = getmetatable(var)
print(t)
for k, v in pairs(t) do
	print(k, v)
end



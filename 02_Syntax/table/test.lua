-- test the error.
line = io.read()
n = tonumber(line)
if n == nil then
	error(line.. " is not a balid number")
else 
	print(n*2)
end

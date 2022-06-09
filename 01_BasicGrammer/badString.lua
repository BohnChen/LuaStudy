beginTime = os.clock()
local str = ""
for i = 1, 300000 do 
	str = str.."a"
end
endTime = os.clock()
print(endTime - beginTime)

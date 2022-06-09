beginTime = os.clock()
str = ""
t = {  }
for i = 1, 300000 do 
	t[#t + 1] = 'a'
end
str = table.concat(t, "")
endTime = os.clock()
print(endTime - beginTime)

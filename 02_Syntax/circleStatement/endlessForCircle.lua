-- endless circle 
cnt = 0;
for i = 1, math.huge do
	cnt = cnt + i
	print("endless circle")
	if cnt >= 1000 then
		break
	end
end

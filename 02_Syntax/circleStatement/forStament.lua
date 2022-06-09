-- for e1, e2, e3 do -block- end
-- Notes: e1 = startPoint, e2 = endPoint, e3 = stepLength.
--				And e1,e2,e3 calculate only once.

function f(x) 
	return x*5
end
local x = 1
-- execute 5 times, because the endPoint f(x) calculate at beginning and it calculate once.
-- stepLength is 1 defaultly.
for i = 1, f(x) do 
	print("nice")
	x = 2;
end

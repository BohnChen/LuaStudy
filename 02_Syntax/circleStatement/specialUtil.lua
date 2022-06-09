-- calculate root 2
local x = 2
local sqrt = x/2
repeat 
	sqrt = (sqrt + x/sqrt) / 2
	local error = math.abs(sqrt^2 - x)
until error < 0.000001 // -- error is a verify value after until
print(sqrt)

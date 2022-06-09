local cnt = 0
local i = 1
repeat
	cnt = cnt + i
	i = i + 1
-- a difference with c/c++, i will be a verify value here even if i is a local one in the repeat body.
until i > 100 
print("cnt =", cnt)

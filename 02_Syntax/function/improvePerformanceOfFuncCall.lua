function f(i)
	print(i)
	-- 此时是一个尾递归,被调函数被直接覆盖主调函数栈帧，因此爆栈的阈值被拉高
	-- return f(i + 1)
	-- 此时主调函数仍在发挥作用，不能直接覆盖栈帧，因此爆栈的阈值很低
	return (f(i + 1))
end

f(1)

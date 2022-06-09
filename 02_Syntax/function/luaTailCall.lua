-- 如果某个函数最后一步是调用另一个函数，那么就称为尾调用
-- 如果上面的这个尾调用是一个递归调用，就称为尾递归
function f(i) 
	print(i)
	return f(i + 1) -- 在函数最后一步，因此是一个尾递归
	-- return (f(i + 1)) 这种写诶法不是尾调用，所以调用深度会有限制
end
f(1) -- 这里是一个尾调用

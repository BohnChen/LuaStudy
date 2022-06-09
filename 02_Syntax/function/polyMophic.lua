-- polymophic in lua
function func (arg1, arg2, arg3)
	print(arg1, arg2, arg3)
end

func(1, 2, 3, 4)
func(1, 2, 3)
func(1, 2)
func(1)
func()

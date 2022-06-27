function f(arg)
	return arg
end

print(f(1))
print(f("hello"))
g = f
print(g(2))
local object = {}
object.attack = 50
object.func = function(self) print(self.attack) end
-- 以下的两句是等价的
object.func(object)
object:func() 

-- function object.func(self)
-- 	print(self.attack)
-- end


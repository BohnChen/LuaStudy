
function expand(s)
	return (string.gsub(s, "$(%w+)", _G)) -- _G 表示全局变量表
end
name = "Lua"
status = "great"
for k, v in pairs(_G) do
	print(k, v)
end
print("------------------------------------------")
print(expand("$name is $status, isn't is"))
print("------------------------------------------")
print(expand("$nodefine is $status, isn't it"))
print("------------------------------------------")



function expand(s)
	-- return (string.gsub(s, "$(%w+)", _G)) --_G 表示全局变量表
	return (string.gsub(s, "$(%w+)", function(n) return tostring(_G[n]) end))
end
for k, v in pairs(_G) do
	print(k, v)
end
print(expand("print = $print; a = $a"))

function toxml(s)
	s = string.gsub(s, "\\(%a+)(%b{})", function (tag, body) -- %1 传入 tag ，%2 传入 body
		body = string.sub(body, 2, -2) -- 去除括号
		body = toxml(body) -- 处理嵌套的命令
		return string.format("<%s>%s</%s>", tag, body, tag)
		end
	)
	return s
end

print(toxml("\\title{The \\bold{\\test{big}} example}"))

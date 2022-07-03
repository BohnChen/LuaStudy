-- 长注释的存在意义——被注释代码中可能有与注释相关的符号，影响注释的效果
-- 比如下面的 page 变量在两个方括号中，表示一个 “长字符串/多行字符串


--[===[

page = [[
<html>
<haed>
	<title> An HTML Page</title>
</haed>
<body>
	<a href="http://www.lua.org">Lua</a>
</body>
</html>
]]

]===]

if page then
	io.write(page)
end

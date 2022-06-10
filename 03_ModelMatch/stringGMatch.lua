s = "how are you"
words = {}
-- %a 指的是任一字母
for w in string.gmatch(s, "%a+") do
	words[#words + 1] = w
end
for k, v in ipairs(words) do
	print(v)
end

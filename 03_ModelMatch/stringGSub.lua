-- psub contains three parameter at lest.
s = string.gsub("Luna is pretty" , "pretty", "cute")
print(s)
s = string.gsub("all lii", "l", "x")
print(s)
s, n = string.gsub("Luna is pretty", "x", "b")
print(s, n)
-- You can pass the forth parameter to specify replace time.
s = string.gsub("all lii", "l", "x", "2")
print(s)

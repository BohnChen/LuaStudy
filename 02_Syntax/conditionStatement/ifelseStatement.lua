print( " ----------single if-------------" )
-- single if
if 1 then 
	print("single if here.")
end

print( " -----------if-else--------------" )

-- if-else
if 0 then
	print("0 is true in lua")
else 
	pinrt("0 is not true in lua")
end

print( " -------multiple if-else---------" )
-- multiple if-else
str = "niceday"
if str ~= "badday" then
	print("Today is a happy day.")
elseif str == "niceday" then
	print("Today is not only a happy day, but a lucky day.")
elseif str == "plainday" then 
	print("Today is not a bad day.")
else 
	print("This is the last branch.")
end

-- Quick sort 
-- To exercise recursive
function QuickSort(arr, left, right) 
	local begIndex = left
	local endIndex = right;
	-- print(left + (right - left) / 2) 
	local pivot
	if (left + (right - left) / 2) % 1 == 0  then
		pivot = arr[left + (right - left) / 2]
	else 
		pivot = arr[(left + (right - left) / 2) - 0.5]
	end
	-- print(pivot)
	while begIndex <= endIndex do 
		while arr[begIndex] < pivot do begIndex = begIndex + 1 end
		while arr[endIndex ] > pivot do endIndex = endIndex - 1 end

		while(begIndex <= endIndex) do
			if begIndex < endIndex then
				local temp = arr[begIndex]
				arr[begIndex] = arr[endIndex]
				arr[endIndex] = temp
			end
			begIndex = begIndex + 1
			endIndex = endIndex - 1
		end
	end
	if begIndex < right then QuickSort(arr, begIndex, right) end
	if left < endIndex then QuickSort(arr, left, endIndex + 1) end
end

function printf(arr) 
	for k, v in ipairs(arr) do
		print(k, v)
	end
end

arr = { 32, 45, 4, 66, 768, 7, 69, 86, 89 }

print("Before sorted. ")
printf(arr)
QuickSort(arr, 1, 9)
print("After sorted. ")
printf(arr)

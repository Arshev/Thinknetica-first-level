# Заполнить массив числами фибоначи до 100
arr = [0, 1]
index = 0
index2 = 1

while true 

	if arr.last >100
		break
	end
	
	number_fibonacci = arr[index] + arr[index2]
	arr << number_fibonacci

	index += 1
	index2 += 1
end
puts arr
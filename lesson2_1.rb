# #Сделать хеш, содеращий месяцы и количество дней в месяце. В цикле выводить те месяцы, у которых количество дней ровно 30
# month = {january: 31, february: 28, march: 31, april: 30, may: 31, june: 30, july: 31, august: 31, september: 30, october: 31, november: 30, december: 31}
# month.each do |key,value|
# 	if value == 30
# 		puts key
# 	end
# end

# #Заполнить массив числами от 10 до 100 с шагом 5
# 10.step(100, 5) do |v|
#     puts v
# end

#Заполнить массив числами фибоначи до 100
# arr = [0, 1]
# index = 0
# index2 = 1

# while true 

# 	if arr.last >100
# 		break
# 	end
	
# 	number_fibonacci = arr[index] + arr[index2]
# 	arr << number_fibonacci

# 	index += 1
# 	index2 += 1
# end
# puts arr

#Заполнить хеш гласными буквами, где значением будет являтся порядковый номер буквы в алфавите (a - 1).
hh = {}
	arr1 = ("a".."z").to_a
	arr2 = (1..28).to_a
	vol = ["a", "e", "i", "o", "u"]
	index = 0
	arr3 = arr1 & vol
	
while true 
	
	key = arr1[index]
	value = arr2[index]
	p index = index + 1

	hh[key] = value

	if index == 26
		break
	end
end

p arr3

	
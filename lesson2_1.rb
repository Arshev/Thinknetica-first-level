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
vol = ["a", "e", "i", "o", "u"]
('a'..'z').each_with_index do |key, value|
	value += 1
	index = 0
	loop do
		index += 1
		if index == 26
			break
		end
		vol.each do |letter|
			x = letter.to_s
			if key.include?(x)
	   		hh[key] = value
			end
		end
		
	end
end
	
p hh
#Заданы три числа, которые обозначают число, месяц, год (запрашиваем у пользователя). Найти порядковый номер даты, начиная отсчет с начала года. Учесть, что год может быть високосным. (Запрещено использовать встроенные в ruby методы для этого вроде Date#yday или Date#leap?) Алгоритм опредления високосного года: www.adm.yar.ru

puts "Введите день:"
day = gets.chomp.to_i
puts "Введите месяц:"
month = gets.chomp.to_i
puts "Введите год:"
year = gets.chomp.to_i

month_hh = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

month_index = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]

if year % 4 == 0 && year % 100 != 0
	month_hh[1] = 29
elsif year % 400 == 0
	month_hh[1] = 29
end

month_days = []
index = 0

while index != month

	month_days << month_hh[index]

	index += 1
end
days_sum = month_days.inject(0){|sum,x| sum + x }

p result = days_sum - (month_days.last - day)

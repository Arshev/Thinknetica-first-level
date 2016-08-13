puts 'Введите три коэффициента: '
a = gets.chomp.to_i
b = gets.chomp.to_i
c = gets.chomp.to_i

p discriminant = b**2 - 4 * a * c

if discriminant < 0
	puts 'Корней нет!'

elsif  discriminant == 0
	radical = Math.sqrt(discriminant)
	puts "Дискриминант: #{discriminant} и x1: #{х1 = (-b + radical) / ( 2.0 * a )}"

elsif discriminant > 0
	radical = Math.sqrt(discriminant)
	puts "Дискриминант: #{discriminant}, x1: #{х1 = (-b + radical) / ( 2.0 * a )}, x2: #{х2 = (-b - radical) / ( 2.0 * a )}"
end 	
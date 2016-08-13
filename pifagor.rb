puts 'Введите три стороны треуголника:'
a = gets.chomp.to_i
b = gets.chomp.to_i
c = gets.chomp.to_i

arr = Array.new
arr << a
arr << b
arr << c
arr.sort!.reverse!
hypotenuse = arr[0]
cat1 = arr[1]
cat2 = arr[2]

if cat1**2 + cat2**2 == hypotenuse**2
	puts 'Треуголник прямоуголный!'
else
	puts 'Треуголник НЕ прямоуголный!'
end

if cat1 == cat2 || cat1 == hypotenuse || cat2 == hypotenuse
	puts 'Треуголник равнобедренный!'
end
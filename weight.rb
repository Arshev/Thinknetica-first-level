puts 'Привет! Как тебя зовут?'
name = gets.chomp
puts 'Какой у тебя вес?'
weight = gets.chomp.to_i

result = weight - 110

if result < 0
	puts 'Ваш вес уже оптимальный'
else 
	puts "Твой вес равен #{weight}, это много! Пора худеть!"
end	
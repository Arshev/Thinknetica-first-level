puts 'Привет! Какой у тебя рост?'
weight = gets.chomp.to_i
puts 'Какой у тебя вес?'
growth = gets.chomp.to_i

result = growth - weight

if result < 0
	puts 'Ваш вес уже оптимальный'
else 
	puts 'Твой вес равен #{weight}, это много для твоего роста! Пора худеть!'
end	
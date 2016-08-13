puts 'Введите основание треуголника:'
base = gets.chomp.to_i
puts 'Введите высоту треуголника:'
height = gets.chomp.to_i
area = 1.0 / 2 * base * height
puts "Площадь треуголника равна: #{area}"
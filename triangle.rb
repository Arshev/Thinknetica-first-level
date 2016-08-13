puts 'Введите основание треуголника:'
base = gets.chomp.to_f
puts 'Введите высоту треуголника:'
height = gets.chomp.to_i
area = 0.5 * base * height
puts "Площадь треуголника равна: #{area}"
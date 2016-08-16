# Заполнить хеш гласными буквами, где значением будет являтся порядковый номер буквы в алфавите (a - 1).
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
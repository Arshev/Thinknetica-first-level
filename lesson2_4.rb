# Заполнить хеш гласными буквами, где значением будет являтся порядковый номер буквы в алфавите (a - 1).
hh = {}
vol = ["a", "e", "i", "o", "u"]
('a'..'z').each_with_index do |letter, index|
	if vol.include?(letter)
	   	hh[letter] = index
	end
end
	
p hh
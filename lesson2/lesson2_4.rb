# Заполнить хеш гласными буквами, где значением будет являтся порядковый номер буквы в алфавите (a - 1).
hh = {}
vol = ["a", "e", "i", "o", "u"]
('a'..'z').each_with_index do |letter, index|
 	hh[letter] = index + 1 if vol.include?(letter)
end
	
p hh
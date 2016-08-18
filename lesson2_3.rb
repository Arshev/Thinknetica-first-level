# Заполнить массив числами фибоначи до 100
arr = [0, 1]

while  arr.last < 100

  number_fibonacci = arr[-2] + arr[-1]
  arr << number_fibonacci

end
puts arr
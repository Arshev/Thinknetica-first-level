# Заполнить массив числами фибоначи до 100
arr = [0, 1]

while  arr.last < 100

  arr << arr[-2] + arr[-1]
  
end
puts arr
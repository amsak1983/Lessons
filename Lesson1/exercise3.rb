def pythagoras(a, b, c)
  array = [a, b, c].sort
  a = array [-3]
  b = array [-2]
  c = array [-1]
  a**2 + b**2 == c**2
end
puts "Укажите длинну первой стороны треугольника?"
side1 = gets.chomp
puts "Теперь укажите длинну второй стороны треугольника?"
side2 = gets.chomp
puts "И наконец длинна третьей стороны треугольника?"
side3 = gets.chomp
a = side1.to_i
b = side2.to_i
c = side3.to_i
if a == b && b == c
puts "Этот треугольник равносторонний"
elsif a == b || b == c || a == c
puts "Этот треугольник равнобедренный"
elsif pythagoras(a, b, c)
puts "Этот треугольник прямоугольный"
else 
puts "Это простой треугольник"
end

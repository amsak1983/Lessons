def fibonacci(n)
  first_n  = 0
  second_n = 1

  (n - 1).times do
  first_n, second_n = second_n, first_n + second_n
end
first_n
end
array = []
0.upto(12) { |n| array << fibonacci(n) }

puts array
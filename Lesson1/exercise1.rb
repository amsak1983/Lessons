puts "what you name?"
name = gets.chomp
puts "how tall are you?"
tall = gets.chomp
a = tall.to_i
if a >= 110
puts "#{name}, you ideal weight #{(a - 110.0) * 1.15}"
else
puts "#{name}, you weight is already ideal"
end

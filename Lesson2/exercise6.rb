name = ""
cart = {}
sum = 0

	

until name == "стоп"

	print "Введите название товара: "
	name = gets.chomp

	next if name == "стоп"

	
	print "Введите цену за ед.: "
	cost = gets.chomp.to_f

	
	print "Введите количество купленного товара: "
	amount = gets.chomp.to_f

	
	cart[name] = {cost: cost, amount: amount, sum: amount*cost}
	sum += amount*cost

end

puts cart
puts "Итоговая сумма покупок составляет: #{sum}р."

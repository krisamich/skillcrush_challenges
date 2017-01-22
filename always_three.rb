def always_three(initial_number)
	number = initial_number + 5
	number *= 2
	number -= 4
	number /= 2
	number = number - initial_number
end

puts "Give me a number: "
initial_number = gets.to_i

puts "Always " + always_three(initial_number).to_s



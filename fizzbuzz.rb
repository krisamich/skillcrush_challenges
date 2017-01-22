current_num = 1

while (current_num <= 100)
	if current_num%3 == 0 && current_num%5 == 0
		puts "FizzBuzz"
	elsif current_num%3 == 0
		puts "Fizz"
	elsif current_num%5 == 0
		puts "Buzz"
	else
		puts current_num
	end

	current_num += 1
end
		
		

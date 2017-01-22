#Note: This would all be better accomplished using looping based on length and recursing for the length of the array. At end run check for 
#length. Update later with proper syntax.
puts "Please enter your full birthday below in mmddyyyy format: "
birthdate = gets

def get_birth_path_num(birthdate)
	#Add together all numbers
	birth_path_num = birthdate[0].to_i + birthdate[1].to_i + birthdate[2].to_i + birthdate[3].to_i + birthdate[4].to_i + birthdate[5].to_i + birthdate[6].to_i + birthdate[7].to_i

	#convert back to string for indexing and readd
	birth_path_num = birth_path_num.to_s
	birth_path_num = birth_path_num[0].to_i + birth_path_num[1].to_i


	#Checks if answer is still 2 digits
	if (birth_path_num > 9)
	#Add remaining digits together
	birth_path_num = birth_path_num[0].to_i + birth_path_num[1].to_i
	end

	birth_path_num = birth_path_num

	return birth_path_num

end

def get_result (birth_path_num)
	#Displays traits of number
	case birth_path_num
	when 1
		message = "Your numerology number is #{birth_path_num}.\nOne is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun."
	when 2
		message = "Your numerology number is #{birth_path_num}.\nThis is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
	when 3
		message = "Your numerology number is #{birth_path_num}.\nNumber Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three's enjoy life and have a good sense of humor. Ruled by Jupiter."
	when 4
		message = "Your numerology number is #{birth_path_num}.\nThis is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
	when 5
		message = "Your numerology number is #{birth_path_num}.\nThis is the freedom lover. The number five is an intellectual vibration. These are 'idea' people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
	when 6
		message = "Your numerology number is #{birth_path_num}.\nThis is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
	when 7
		message = "Your numerology number is #{birth_path_num}.\nThis is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
	when 8
		message = "Your numerology number is #{birth_path_num}.\nThis is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."
	when 9
		message = "Your numerology number is #{birth_path_num}.\nThis is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."
	else
		message = "Something went wrong. For debugging purposes, current val is #{birth_path_num}"
	end
end

birth_path_num = get_birth_path_num(birthdate)
message = get_result(birth_path_num)

puts message
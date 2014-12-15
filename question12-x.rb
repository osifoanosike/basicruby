def get_case_count(string_param)
	count_cup = { "lowercase" => 0, "uppercase" => 0, "digits" => 0, "special" => 0 }
	
	string_param[0..string_param.length].each_char do |xter|
		case
		when xter.match(/[a-z]/)
			count_cup["lowercase"] += 1
		when xter.match(/[A-Z]/)
			count_cup["uppercase"] += 1
		when xter.match(/\d/)
			count_cup["digits"] += 1
		else
			count_cup["special"] += 1
		end
	end
	puts count_cup
end

get_case_count("Titobi is not at home and he's 10 too.")
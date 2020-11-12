def sum(numbers)
	total = 0
	numbers.each do |number|
		total += number
	end
	return total
end

if __FILE__ == $0
	numbers = [1, 2, 3]
	puts sum(numbers)
end
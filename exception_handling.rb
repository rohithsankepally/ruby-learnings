def divide(a, b)
	if b == 0
		raise "Denominator cannot be 0"
	end
	puts "#{a}/#{b} =  #{a / b}"
	rescue StandardError => e  
  		puts "#{a} cannot be divided by #{b} : #{e.message}"  
  		puts "StackTrace : #{e.backtrace.inspect}" 
end

if __FILE__ == $0
	divide(5.0,  3)
	divide(5.0,  0)
end
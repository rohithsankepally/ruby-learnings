require_relative "student"

class Student
	# This is called when a invoked method doesn't exist
	def method_missing(m, *args, &block)
		puts "Method with name : #{m}, with args : #{args} doesn't exist"
	end
end

Student.new("!", -1).random("lol")
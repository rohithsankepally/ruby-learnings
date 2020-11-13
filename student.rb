class Student
	attr_accessor :name 	# This makes the variable accessible through object
	# Initialize is called when an object is created
	def initialize(name, rollno)
		@name = name
		@rollno = rollno
	end
	def get_name
		return @name
	end
	def get_rollno
		return @rollno
	end
end

if __FILE__ == $0
	student = Student.new("Rohith", 201302219)
	puts "Name : #{student.get_name}"
	puts "Roll No. : #{student.get_rollno}"
end
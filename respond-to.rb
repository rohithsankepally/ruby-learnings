require_relative 'student'

if __FILE__ == $0
	student = Student.new("Rohith", 201302219)
	puts student.respond_to?("name") # Returns true
	puts student.respond_to?("get_name") # Returns true
	puts student.respond_to?("name=") # Returns true
	puts student.respond_to?("rollno") # Returns false
	puts student.respond_to?("get_rollno") # Returns true
end
require_relative "student"
require "test/unit"
include Test::Unit::Assertions

student = Student.new("Rohith", 201302219)

# Marshalling(serializing) the above object into a file
File.open('student.dump', 'w+') do |f|  
  Marshal.dump(student, f)  
end  

# Unmarshalling(de serializing) the data in the file into an object
File.open('student.dump') do |f|  
  student_copy = Marshal.load(f)  
  assert_equal(student.get_name, student_copy.get_name)
  assert_equal(student.get_rollno, student_copy.get_rollno)
end 

# Marshalling does not work on procs or lambdas
File.open('lambda.dump', 'w+') do |f|  
  assert_raise TypeError do 
		Marshal.dump(lambda {|x, y| x }, f)
	end
end 
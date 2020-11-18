require "test/unit"
module MyMath
	# - This is one way of defining functions.
	# - The reason behind defining such functions is to 
	# avoid function name clashes across modules.
	# - To call this method we call MyMath.sum(2, 3)
	def MyMath.sum(a, b)
		return a+b
	end

	# - This is another way of defining functions.
	# - We can directly use this method.
	# - To call this method we call multiply(2, 3)
	def multiply(a, b)
		return a*b
	end

end

class Calculator
	include MyMath
	def add(a, b, c)
		return MyMath.sum(a, MyMath.sum(b, c))
	end

	def multiply3(a, b, c)
		return multiply(a, multiply(b, c))
	end
end

class TestCalculator < Test::Unit::TestCase
	# This is run before running test cases
	def setup
		@calculator = Calculator.new
		puts "Setting up unit tests...."
	end
	# This is run after running all test cases
	def teardown
		puts "Completed unit test execution"
	end
	def test_operations
		puts "Testing sum function...."
		assert_equal(6, @calculator.add(1,2,3))
		assert_equal(6, @calculator.multiply3(1,2,3))
	end
end


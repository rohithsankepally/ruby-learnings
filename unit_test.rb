require_relative "loop"
require "test/unit"

class TestSum < Test::Unit::TestCase
	# This is run before running test cases
	def setup
		puts "Setting up unit tests...."
		@nums = [1,2,3]
	end
	# This is run after running all test cases
	def teardown
		puts "Completed unit test execution"
		@num = []
	end
	def test_sum
		puts "Testing sum function...."
		assert_equal(6, sum(@nums))
		assert_not_equal(4, sum(@nums))
	end
end
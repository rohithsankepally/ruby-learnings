require "test/unit"
# Proc - We can encapsulate a function inside an object and call it.
# One of the core features of ruby's functional programming

class TestProc < Test::Unit::TestCase
	# This is run before running each test cases
	def setup
		puts "Setting up unit tests...."
	end
	# This is run after running each test cases
	def teardown
		puts "Completed unit test execution"
	end
	# Lambda executes and proceeds to the next line of the function calling it.
	# Proc executes and returns from function calling it.
	def test_return
		-> {return 3}.call
		proc {return 4}.call
		# Does not reach here as the above proc returns
		assert_false
	end
	# Proc is more flexbile than lamda in terms of argument mapping
	def test_mapping
		p = proc {|x, y| x }
		l = lambda {|x, y| x }
		assert_equal([1, 3], [[1, 2], [3, 4]].map(&p))
		assert_raise ArgumentError do 
			[[1, 2], [3, 4]].map(&l)
		end
	end
end
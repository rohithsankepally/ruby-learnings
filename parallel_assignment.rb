require "test/unit"

class TestParallelAssignment < Test::Unit::TestCase
	# Excess elements on the rhs are discarded if multiple values 
	# are there in lhs
	def test_1
		a, b = 1, 2, 3, 4
		assert_equal(1, a)
		assert_equal(2, b)
	end
	# If the lhs has only one element, entire object on the rhs is assigned
	def test_2
		a = 1, 2, 3, 4
		b = [1, 2, 3, 4]
		assert_equal(a, b)
	end
end
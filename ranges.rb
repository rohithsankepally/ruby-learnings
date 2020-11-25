require "test/unit"
include Test::Unit::Assertions

# Defining a sequence
seq = -2..10
# Checking if a sequence contains a number
assert_true(seq.include?(7))
# Min, Max of the sequence
assert_equal(-2, seq.min)
assert_equal(10, seq.max)
# Reject accepts a block and removes elements of the range.
seq = seq.reject {|i| i > 6}
assert_false(seq.include?(7))
assert_equal([-2,-1,0,1,2,3,4,5,6], seq.to_a)

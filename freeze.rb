require_relative "student"
require "test/unit"


class TestFreeze < Test::Unit::TestCase
	def test_freeze_class
		student = Student.new("Rohith", 201302219)
		student.freeze
		student.name = "Rahul"
		rescue FrozenError => e
			assert(true, "Frozen object cannot be modified")
			return
		assert(false)
	end
	def test_freeze_string_1
		str = "Rohith"
		str.freeze
		str << "Rahul"
		rescue FrozenError => e
			assert(true, "Frozen object cannot be modified")
			return
		assert(false)
	end
	def test_freeze_string_2
		str = "Rohith"
		str.freeze
		# += results in the generation of a new string
		# The newly created string is not frozen
		str += " Reddy"
		assert_false(str.frozen?)	
	end
	def test_freeze_string_3
		str1 = str2 = "Rohith"
		str1.freeze
		# Freeze is done to the reference (not to the variable)
		# So, str1 & str2 show frozen as true
		assert_true(str1.frozen?)
		assert_true(str2.frozen?)
		# The variable on which freeze was called can be re-assigned
		str1 = "Rahul"
		assert_false(str1.frozen?)
		assert_true(str2.frozen?)
	end
end
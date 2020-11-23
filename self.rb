require "test/unit"
include Test::Unit::Assertions

# Top level self points to main
assert_equal(self.to_s, "main")

class TestClass
	# In this class, self points to this class
	assert_equal(self.to_s, "TestClass")
	# In a nested class/module, self points to the nested class/module
	module TestModule
		assert_equal(self.to_s, "TestClass::TestModule")
	end
	class TestNestedClass
		assert_equal(self.to_s, "TestClass::TestNestedClass")
	end
	# Once we are back to this class, self points to this class again
	assert_equal(self.to_s, "TestClass")
end
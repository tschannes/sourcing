require 'test_helper'

class CategoriesControllerTest < ActionController::TestCase
	
	def setup
		@cat = FactoryGirl.build(:category, name: "category1")
		@cat2 = FactoryGirl.build(:category, name: "category1")
		@cat3 = FactoryGirl.build(:category, name: "category3")
	end

	def teardown
		@cat = nil
		@cat2 = nil
		@cat3 = nil
	end

	test "that only unique categories can be saved" do
		@cat.save
		assert !@cat2.save
	end

	test "category count increases properly" do
		@cat.save
		assert_equal @cat.cat_size, 1
		@cat3.save
		assert_equal @cat2.cat_size, 2
		@cat2.save
		assert_equal @cat3.cat_size, 1
	end
end

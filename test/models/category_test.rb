require 'test_helper'

class CategoryTest < ActiveSupport::TestCase

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

	test "cat names are present" do
		cat = FactoryGirl.build(:category, name: "")
		assert !cat.save, "it saved an empty string to db"
	end

	test "that only unique categories can be saved" do
		@cat.save
		assert !@cat2.save
	end

	test "category count increases properly" do
		cats = []
		@cat.save
		cats << @cat
		assert_equal cats.size, 1
		@cat2.save
		cats << @cat2
		assert_equal cats.size, 1
		@cat3.save
		cats << @cat3
		assert_equal cats.size, 2
	end

end

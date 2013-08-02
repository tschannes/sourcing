require 'test_helper'

class CategoryTest < ActiveSupport::TestCase

	test "cat names are present" do
		cat = FactoryGirl.build(:category, name: "")
		assert !cat.save, "it saved an empty string to db"
	end

end

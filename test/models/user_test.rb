require 'test_helper'

class UserTest < ActiveSupport::TestCase

	test "that user data is valid" do
		array = [:first_name, :last_name, :nick_name, :email, :job]

		for i in 0..(array.length-1) do
			user = FactoryGirl.build(:user, array[i] => "")
			assert !user.save, "it saved an empty string to db"
		end
	end

	test "user email is valid" do
		user = FactoryGirl.build(:user, email: "somerandomstring")
		assert !user.save, "it saved an empty string to db"

		user = FactoryGirl.build(:user, email: "somerandom@string")
		assert user.save, "it saved valid email to to db"
	end

end

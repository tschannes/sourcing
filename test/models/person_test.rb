require 'test_helper'

class PersonTest < ActiveSupport::TestCase
 
  test "that person data is not empty" do
    array = [:description, :rating, :cat_id, :user_id, :first_name, :last_name, :nick_name, :email, :job]

    for i in 0..(array.length-1) do
      person = FactoryGirl.build(:person, array[i] => "")
      assert !person.save, "it saved an empty string to db"
    end
  end

  test "user email is valid" do
		person = FactoryGirl.build(:person, email: "somerandomstring")
		assert !person.save, "it saved an empty string to db"

		person2 = FactoryGirl.build(:person)
		assert person2.save, "it saved valid email to to db"
	end
end

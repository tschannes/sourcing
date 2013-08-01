require 'test_helper'

class BookTest < ActiveSupport::TestCase
  
  test "that book data is valid" do
    array = [:title, :description, :author, :cat_id, :user_id, :publisher, :date_published]

    for i in 0..(array.length-1) do
      book = FactoryGirl.build(:book, array[i] => "")
      assert !book.save, "it saved an empty string to db"
    end
  end

end

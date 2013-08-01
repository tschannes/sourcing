require 'test_helper'
require 'factories/factories'

class WebsiteTest < ActiveSupport::TestCase


  test "make sure attributes cannot be empty" do
    array = [:title, :description, :author, :url, :cat_id, :user_id]

    for i in 0..(array.length-1) do
      website = FactoryGirl.build(:website, array[i] => "")
      assert !website.save, "it saved an empty string to db"
    end

  end

  test "make sure urls entered are actually valid" do
    website = FactoryGirl.build(:website,url: "somerandomtxt")
    assert !website.save, "it saved invalid url"

    website = FactoryGirl.build(:website,url: "www.tons.ch")
    assert !website.save, "it saved invalid url"

    website = FactoryGirl.build(:website, url: "http://www.nba.com")
    assert website.save, "it did not save a valid url"
  end

  test "things have an appropriate length" do
    website = FactoryGirl.build(:website,title: "super duper long and extremely verbose dummy title")
    assert !website.save, "title is too long"

    website = FactoryGirl.build(:website,description: "description")
    assert !website.save, "description is too short"
  end
end

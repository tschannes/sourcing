require 'test_helper'
require 'factories/factories'

class WebsiteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "make sure attributes cannot be empty" do
  	website = FactoryGirl.build(:website, title: "")
  	assert !website.save, "it saved an empty string to db"

  	website = FactoryGirl.build(:website, description: "")
  	assert !website.save, "it saved an empty string to db"

  	website = FactoryGirl.build(:website, author: "")
  	assert !website.save, "it saved an empty string to db"

  	website = FactoryGirl.build(:website, url: "")
  	assert !website.save, "it saved an empty string to db"

  	website = FactoryGirl.build(:website, cat_id: nil)
  	assert !website.save, "it saved an empty string to db"

  	website = FactoryGirl.build(:website, user_id: nil)
  	assert !website.save, "it saved an empty string to db"
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

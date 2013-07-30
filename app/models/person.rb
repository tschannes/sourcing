class Person < ActiveRecord::Base
	has_many :tags, as: :taggable
end

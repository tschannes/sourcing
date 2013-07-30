class Category < ActiveRecord::Base
	has_many :tags, as: :taggable
end

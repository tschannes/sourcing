class Book < ActiveRecord::Base
	has_many :tags, as: :taggable
	has_many :taggables, :through => :tags, :source => :taggable, :source_type => "Book"
end

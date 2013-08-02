class Book < ActiveRecord::Base
	has_many :tags, as: :taggable
	has_many :taggables, :through => :tags, :source => :taggable, :source_type => "Book"
	has_one :category, as: :categorizable

	validates :title, :description, :author, :cat_id, :user_id, :publisher, :date_published, presence: true
end

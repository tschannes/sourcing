class Book < ActiveRecord::Base
	has_many :tags, as: :taggable
	has_many :taggables, :through => :tags, :source => :taggable, :source_type => "Book"
	belongs_to :category, foreign_key: "cat_id"

	validates :title, :description, :author, :cat_id, :user_id, :publisher, :date_published, presence: true
end

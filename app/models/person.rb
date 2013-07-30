class Person < ActiveRecord::Base
	has_many :tags, as: :taggable
	has_many :taggables, :through => :tags, :source => :taggable, :source_type => "Person"
	belongs_to :category, foreign_key: "cat_id"
end

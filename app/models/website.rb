class Website < ActiveRecord::Base
	has_many :tags, as: :taggable
	has_many :taggables, :through => :tags, :source => :taggable, :source_type => "Website"
	belongs_to :category, foreign_key: "cat_id"
end

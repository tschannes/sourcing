class Person < ActiveRecord::Base
	has_many :tags, as: :taggable
	has_many :taggables, :through => :tags, :source => :taggable, :source_type => "Person"
	has_one :category, as: :categorizable

	validates :description, :rating, :cat_id, :user_id, :first_name, :last_name, :nick_name, :email, :job, presence: true
	validates_format_of :email, :with => /@/

end

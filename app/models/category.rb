class Category < ActiveRecord::Base

	belongs_to :categorizable, polymorphic: true

	validates :name, :cat_size, presence: true
	validates :name, :uniqueness => {:scope => :name, :message => 'must be unique per contact'}
	

end

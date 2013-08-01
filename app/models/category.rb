class Category < ActiveRecord::Base
	has_many :tags, as: :taggable

	validates :name, :cat_size, presence: true
	validates :name, :uniqueness => {:scope => :name, :message => 'must be unique per contact'}
	before_save :add_category_to_array

	private

	def add_category_to_array
		self.name

		# if Category.find_by_name(category)
		# 	cat = Category.find_by_name(category)
		# 	cat.cat_size += 1
		# 	cat.save
		# else
		# 	cat = Category.new(
		# 		:name => category,
		# 		:cat_size => 1
		# 		)
		# 	cat.save
		# end
	end

end

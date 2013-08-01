class Category < ActiveRecord::Base
	has_many :tags, as: :taggable

	validates :name, :cat_size, presence: true
	validates :name, :uniqueness => {:scope => :name, :message => 'must be unique per contact'}
	#before_action :add_category_to_array(params[:name]);

	private

	def add_category_to_array(category)
		if Category.find_by_name(category)
			cat = Category.find_by_name(category)
			cat.cat_size += 1
			cat.save
		else
			cat = Category.new(
				:name => category,
				:cat_size => 1
				)
			cat.save
		end
	end

end

class CategoriesController < ApplicationController


	before_save :increase_cat_size

	private

	def increase_cat_size

		if self != nil
			self.cat_size.increment!
		else
			self.cat_size = 1
		end
	end
end

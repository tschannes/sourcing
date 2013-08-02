class CategoriesController < ApplicationController

	before_validation :increase_cat_size



	private

	def increase_cat_size

		if @category != nil
			@category.cat_size.increment!
		else
			@category.cat_size = 1
		end
	end
end

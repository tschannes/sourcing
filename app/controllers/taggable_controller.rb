class TaggableController < ApplicationController
	def index
		@taggables = Book.first.tags
	end
end

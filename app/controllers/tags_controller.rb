class TagsController < ApplicationController

	def index
		@tags = Tag.first
		@cats = Category.first
		@sources = @tags.taggable
	end

	def new
		@tag = Tag.new
		@cat = Category.new
	end
end

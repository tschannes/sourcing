class CreateCategories < ActiveRecord::Migration
	def change
		create_table :categories do |t|
			t.string   "name"
			t.integer  "cat_size"
			t.timestamps
		end
	end
end

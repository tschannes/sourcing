class CreateWebsites < ActiveRecord::Migration
	def change
		create_table :websites do |t|
			t.string   "name"
			t.string   "description"
			t.string   "author"
			t.integer  "rating"
			t.integer  "cat_id"
			t.integer  "user_id"
			t.string   "url"
			t.timestamps
		end
	end
end

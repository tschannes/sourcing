class CreateBooks < ActiveRecord::Migration
	def change
		create_table :books do |t|
			t.string   "name"
			t.string   "description"
			t.string   "author"
			t.integer  "rating"
			t.integer  "cat_id"
			t.integer  "user_id"
			t.string   "date_published"
			t.string   "publisher"
			t.timestamps
		end
	end
end

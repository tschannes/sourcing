class CreatePeople < ActiveRecord::Migration
	def change
		create_table :people do |t|
			t.string   "description"
			t.integer  "rating"
			t.integer  "cat_id"
			t.integer  "user_id"
			t.string   "first_name"
			t.string   "last_name"
			t.string   "nick_name"
			t.string   "email"
			t.string   "job"
			t.timestamps
		end
	end
end

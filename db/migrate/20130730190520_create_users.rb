class CreateUsers < ActiveRecord::Migration
	def change
		create_table :users do |t|
			t.string   "first_name"
			t.string   "last_name"
			t.string   "nick_name"
			t.string   "email"
			t.string   "job"
			t.timestamps
		end
	end
end

class User < ActiveRecord::Base

	validates :first_name, :last_name, :nick_name, :email, :job, presence: true
	validates_format_of :email, :with => /@/

end

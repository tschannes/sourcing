class Website < ActiveRecord::Base
	has_many :tags, as: :taggable
	has_many :taggables, :through => :tags, :source => :taggable, :source_type => "Website"
	has_one :category, as: :categorizable

	#validations
	validates :title, :url, :author, :description, :cat_id, :user_id, presence: true
	validates_length_of :title, :minimum => 10, :maximum => 40
	validates_length_of :title, :minimum => 40, :maximum => 140

	validates :url, :uri => { :format => /(^$)|(^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$)/ix }

	private
	# def url= url_str
	# 	unless url_str.blank?
	# 		unless url_str.split(':')[0] == 'http' || url_str.split(':')[0] == 'https'
	# 			url_str = "http://" + url_str
	# 		end
	# 	end
	# 	write_attribute :url, url_str
	# end


end

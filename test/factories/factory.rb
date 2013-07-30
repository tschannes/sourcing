

FactoryGirl.define do
	factory :user do
		name 'John Doe'
		date_of_birth { 21.years.ago }
	end
end

FactoryGirl.define do
	factory :tag do
		name "super"
		tag_size 2
		taggable_id 1
		taggable_type "Book"
	end
end

FactoryGirl.define do
	factory :category do
		name "tools"
		cat_size 3
	end
end

FactoryGirl.define do
	factory :user do
		first_name "Toni"
		last_name "Tone"
		nick_name "The Rule"
		email "tones@severilyserious.ch"
		job "thinkpinkyist"
	end
end

FactoryGirl.define do
	factory :website do
		title "example site"
		description "this is an example site"
		author "exemplar exemplus"
		rating 4
		cat_id category.id
		user_id user.id
		url "www.example.com"
	end
end

FactoryGirl.define do
	factory :person do
		description "This is a sample description"
		rating 3
		cat_id category.id
		user_id user.id
		first_name "Toni"
		last_name "Tonelli"
		nick_name "tones"
		email "tones@severerocknroll.com"
		job "gardener"
	end
end

FactoryGirl.define do
	factory :book do
		title "Kinder der Finsternis"
		description "Most ridiculously baroque novel during WW2"
		author "Wolf von Niebelschütz"
		rating 9
		cat_id category.id
		user_id user.id
		date_published 1943
		publisher "Unknown"
	end
end
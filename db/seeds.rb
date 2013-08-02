# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
tag = Tag.create!(
	name: "super",
	tag_size: 2,
	taggable_id: 1,
	taggable_type: "Book"
	)
category = Category.create!(
	name: "tools",
	cat_size: 3,
	)
category2 = Category.create!(
	name: "suits",
	cat_size: 1,
	)
category3 = Category.create!(
	name: "cars",
	cat_size: 2,
	)
user = User.create!(
	first_name: "Toni",
	last_name: "Tone",
	nick_name: "The Rule",
	email: "tones@severilyserious.ch",
	job: "thinkpinkyist"
	)
website = Website.create!(
	title: "example site",
	description: "this is an example site",
	author: "exemplar exemplus",
	rating: 4,
	cat_id: 1,
	user_id: 1,
	url: "www.example.com"
	)
person = Person.create!(
	description: "This is a sample description",
	rating: 3,
	cat_id: 1,
	user_id: 1,
	first_name: "Toni",
	last_name: "Tonelli",
	nick_name: "tones",
	email: "tones@severerocknroll.com",
	job: "gardener"
	)
book = Book.create!(
	title: "Kinder der Finsternis",
	description: "Most ridiculously baroque novel during WW2",
	author: "Wolf von Niebelschütz",
	rating: 9,
	cat_id: 1,
	user_id: 1,
	date_published: 1943,
	publisher: "Unknown"
	)
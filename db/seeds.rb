# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


tesla = Company.create! name: 'Tesla', domain: 'tesla.com'
google = Company.create! name: 'Google', domain: 'google.com'
amazon = Company.create! name: 'Amazon', domain: 'amazon.com'


#loop through each company
[tesla, google, amazon].each do |company|
	#create a user for each company
	['julia', 'niki','olga'].each do |username|
		email = "#{username}@#{company.domain}"
		User.create!(email:email, password: 'password')
	end

	#create top secret documents that only company can acess 
	name = 'article 2018'
	content = "#{company.name}'s article for 2018"
	Document.create!(company:company, name:name, content: content)


	name = 'just second article'
	technologies = ['At','BV', 'Streaming video']
	mediums = ['in space', 'on a remote', 'for dog']
	big_thing = "#{technologies.sample}#{mediums.sample}" 
	content = "the second article is something only #{company.name} can do #{big_thing}."
	Document.create!(company:company, name:name, content:content)




end

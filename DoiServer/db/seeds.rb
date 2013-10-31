# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Adding Users to the Database.
puts 'Adding Users'
kyle = User.create :email => 'kyle@gmail.com', :password => 'password', :password_confirmation => 'password'
frank = User.create :email => 'frank@gmail.com', :password => 'password', :password_confirmation => 'password'
annie = User.create :email => 'annie@gmail.com', :password => 'password', :password_confirmation => 'password'
mike = User.create :email => 'mike@gmail.com', :password => 'password', :password_confirmation => 'password'
melissa = User.create :email => 'melissa@gmail.com', :password => 'password', :password_confirmation => 'password'
doi_1 = Doi.create :name => '1876545672', :user_id => 1, :description => 'DOI for my paper on funny hats'
url_1 = Url.create :url => 'http://www.google.com', :doi_id => 1
url_2 = Url.create :url => 'http://www.wikipedia.com', :doi_id => 1
url_3 = Url.create :url => 'http://www.wsj.com', :doi_id => 1

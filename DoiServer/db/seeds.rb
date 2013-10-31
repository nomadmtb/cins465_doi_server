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
url_4 = Url.create :url => 'http://www.news.google.com', :doi_id => 1

doi_2 = Doi.create :name => '9856251234', :user_id => 2, :description => 'This one is for my research thesis'
url_6 = Url.create :url => 'http://www.csuchiko.edu', :doi_id => 2
url_7 = Url.create :url => 'http://www.csuchico.edu', :doi_id => 2

doi_3 = Doi.create :name => '7788217652', :user_id => 3, :description => 'Paper on underwater basket weaving'
url_8 = Url.create :url => 'http://www.basketsftw.com', :doi_id => 3
url_9 = Url.create :url => 'http://www.coolbaskets.com', :doi_id => 3
url_10 = Url.create :url => 'http://www.baskets.com', :doi_id => 3

doi_4 = Doi.create :name => '0091772611', :user_id => 3, :description => 'Paper on riding bikes'
url_11 = Url.create :url => 'http://www.mtbr.com', :doi_id => 4
url_12 = Url.create :url => 'http://www.santacruzbikes.com', :doi_id => 4
url_13 = Url.create :url => 'http://www.bikemag.com', :doi_id => 4

doi_5 = Doi.create :name => '7761524789', :user_id => 4, :description => 'Research docs'
url_14 = Url.create :url => 'http://www.smart.com', :doi_id => 5
url_15 = Url.create :url => 'http://www.google.com', :doi_id => 5
url_16 = Url.create :url => 'http://www.yahoo.com', :doi_id => 5
url_17 = Url.create :url => 'http://www.news.com', :doi_id => 5
url_18 = Url.create :url => 'http://www.cnn.com', :doi_id => 5
url_19 = Url.create :url => 'http://www.facebook.com', :doi_id => 5
url_20 = Url.create :url => 'http://www.thehackernews.com', :doi_id => 5

doi_6 = Doi.create :name => '9987890265', :user_id => 1, :description => 'Funny research papers'
url_21 = Url.create :url => 'http://www.imgur.com', :doi_id => 6
url_22 = Url.create :url => 'http://www.engadget.com', :doi_id => 6
url_23 = Url.create :url => 'http://www.yahoo.com', :doi_id => 6

doi_7 = Doi.create :name => '5411232890', :user_id => 1, :description => 'Lessons learned while programming'
url_24 = Url.create :url => 'http://www.facebook.com/whitehat', :doi_id => 7
url_25 = Url.create :url => 'http://www.reddit.com/r/netsec', :doi_id => 7
url_26 = Url.create :url => 'http://www.fart.com', :doi_id => 7

doi_8 = Doi.create :name => '1287998221', :user_id => 5, :description => 'Room for so many activities'
url_27 = Url.create :url => 'http://www.ecst.csuchico.edu', :doi_id => 8
url_28 = Url.create :url => 'http://www.imgur.com.com', :doi_id => 8
url_29 = Url.create :url => 'http://www.ratemyprofessors.com', :doi_id => 8

doi_9 = Doi.create :name => '0098123887', :user_id => 1, :description => 'Reminders for paper'
url_30 = Url.create :url => 'http://www.ecst.csuchico.edu', :doi_id => 9
url_31 = Url.create :url => 'http://www.google.com', :doi_id => 9
url_32 = Url.create :url => 'http://www.ratemyprofessor.com', :doi_id => 9

doi_10 = Doi.create :name => '8870091872', :user_id => 1, :description => 'Power on inurl:"download.php?file="'
url_33 = Url.create :url => 'http://www.thehackernews.com', :doi_id => 10
url_34 = Url.create :url => 'http://www.google.com?q=inurl', :doi_id => 10
url_35 = Url.create :url => 'http://www.thehackernews.com', :doi_id => 10

review_1_1 = Review.create :doi_id => 1, :comment => 'This DOI is a pile of garbage!', :user_id => 5
review_1_2 = Review.create :doi_id => 1, :comment => 'OMG this DOI saved my life bro.', :user_id => 2
review_1_3 = Review.create :doi_id => 1, :comment => 'I\'m commenting again to show my support for this DOI.', :user_id => 2

review_2_1 = Review.create :doi_id => 2, :comment => 'Nice find! I\'ll bookmark this!', :user_id => 1
review_2_2 = Review.create :doi_id => 2, :comment => 'This one should get removed. Crap.', :user_id => 3
review_2_3 = Review.create :doi_id => 2, :comment => 'THANK YOU for this one!', :user_id => 4
review_2_4 = Review.create :doi_id => 2, :comment => 'Nice try, but you still failed the class.', :user_id => 5

review_3_1 = Review.create :doi_id => 3, :comment => 'Cool DOI man!', :user_id => 1
review_3_2 = Review.create :doi_id => 3, :comment => 'This was a good one!', :user_id => 5
review_3_3 = Review.create :doi_id => 3, :comment => 'This one is okay. Meh, but okay.', :user_id => 3

review_4_1 = Review.create :doi_id => 4, :comment => 'I like this one.', :user_id => 3
review_4_2 = Review.create :doi_id => 4, :comment => 'Take an arrow in the knee.', :user_id => 5
review_4_3 = Review.create :doi_id => 4, :comment => 'This DOI is awesome! HL3 confirmed!', :user_id => 1
review_4_4 = Review.create :doi_id => 4, :comment => 'This DOI is total shit.', :user_id => 2

review_5_1 = Review.create :doi_id => 5, :comment => 'FIRST COMMENT!', :user_id => 4

review_6_1 = Review.create :doi_id => 6, :comment => 'FIRST!!!', :user_id => 5
review_6_2 = Review.create :doi_id => 6, :comment => 'Inaccurate piece of crap.', :user_id => 4
review_6_3 = Review.create :doi_id => 6, :comment => 'This one is pretty good. Thanks.', :user_id => 1

review_7_1 = Review.create :doi_id => 7, :comment => 'This one is inaccurate.', :user_id => 5
review_7_2 = Review.create :doi_id => 7, :comment => 'Caught for cheating.', :user_id => 4
review_7_3 = Review.create :doi_id => 7, :comment => 'Nice DOI dude!', :user_id => 2
review_7_4 = Review.create :doi_id => 7, :comment => 'Nice try, but you still failed the class.', :user_id => 1

review_8_1 = Review.create :doi_id => 8, :comment => 'Good find man!', :user_id => 1
review_8_2 = Review.create :doi_id => 8, :comment => 'My favorite DOI in NA.', :user_id => 2
review_8_3 = Review.create :doi_id => 8, :comment => 'Pretty good DOI.', :user_id => 4

review_9_1 = Review.create :doi_id => 9, :comment => 'Total shit!', :user_id => 5
review_9_2 = Review.create :doi_id => 9, :comment => 'OMG THANK YOU!', :user_id => 4
review_9_3 = Review.create :doi_id => 9, :comment => 'Who wrote this garbage?', :user_id => 3

review_10_1 = Review.create :doi_id => 10, :comment => 'Woah! This is awesome!', :user_id => 1
review_10_2 = Review.create :doi_id => 10, :comment => 'Hey this DOI was my idea.', :user_id => 3
review_10_3 = Review.create :doi_id => 10, :comment => 'Really?! Who writes crap like this?!', :user_id => 4

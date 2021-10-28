User.destroy_all
u1 = User.create :first_name => 'Lex', :last_name => 'Poulsen', :email => 'lex@lex.com', :location => 'Melbourne, Australia', :password => 'chicken'
u2 = User.create :first_name => 'John', :last_name => 'Smith', :email => 'smithy@ga.com', :location => 'Melbourne, Australia', :password => 'chicken'
u3 = User.create :first_name => 'Joel', :last_name => 'Turnbull', :email => 'joel@ga.com', :location => 'Sydney, Australia', :password => 'chicken'
u4 = User.create :first_name => 'Alice', :last_name => 'Smith', :email => 'asmith@ga.com', :location => 'Melbourne, Australia', :password => 'chicken'
puts "#{ User.count } users"

Venue.destroy_all
v1 = Venue.create :name => 'The Builders Arms', :location => 'Melbourne, Australia', :image => 'https://res.cloudinary.com/dydsfpahp/image/upload/v1635311085/Project-1/builders_arms_x5jpaj.jpg'
v2 = Venue.create :name => 'Bad Frankie', :location => 'Melbourne, Australia', :image => 'https://res.cloudinary.com/dydsfpahp/image/upload/v1635311081/Project-1/bad_frankie_sqtp3v.jpg'
v3 = Venue.create :name => 'Above Board', :location => 'Melbourne, Australia', :image => 'https://res.cloudinary.com/dydsfpahp/image/upload/v1635311078/Project-1/above_board_yvjkap.jpg'
v4 = Venue.create :name => 'Primo', :location => 'Melbourne, Australia', :image => 'https://lorempixel.com/660/500/nightlife/'
v5 = Venue.create :name => 'The Catfish', :location => 'Melbourne, Australia ', :image => 'https://res.cloudinary.com/dydsfpahp/image/upload/v1635311079/Project-1/catfish_jt5uts.jpg'
v6 = Venue.create :name => 'The Baxter Inn', :location => 'Sydney, Australia', :image => 'https://res.cloudinary.com/dydsfpahp/image/upload/v1635311078/Project-1/baxter_inn_fmt8jt.jpg'
v7 = Venue.create :name => 'Continental Deli', :location => 'Sydney, Australia', :image => 'https://lorempixel.com/660/500/nightlife/'
v8 = Venue.create :name => "Belle's Hot Chicken", :location => 'Melbourne, Australia', :image => 'https://res.cloudinary.com/dydsfpahp/image/upload/v1635311079/Project-1/belles_bn6ipa.jpg'
v9 = Venue.create :name => 'Besk', :location => 'Perth, Australia', :image => 'https://res.cloudinary.com/dydsfpahp/image/upload/v1635311079/Project-1/besk_hkfqwj.jpg'
v10 = Venue.create :name => 'NowhereMan Brewing Co', :location => 'Perth, Australia', :image => 'https://lorempixel.com/660/500/nightlife/'
puts "#{ Venue.count } venues"

Category.destroy_all
c1 = Category.create :name => 'Bar'
c2 = Category.create :name => 'Restaurant'
c3 = Category.create :name => 'Pub'
c4 = Category.create :name => 'Cocktail Bar'
c5 = Category.create :name => 'Dive Bar'
puts "#{ Category.count } categories"

Favourite.destroy_all
f1 = Favourite.create :name => 'Night Out in Fitzroy'
f2 = Favourite.create :name => 'Quiet Wines'
f3 = Favourite.create :name => 'Celebrate!'
f4 = Favourite.create :name => 'Cocktails'
puts "#{ Favourite.count } favourites"

puts "Assign venues to favourites"
f1.venues << v1 << v2 << v3 << v5
f2.venues << v1 << v8
f3.venues << v8 << v3 << v4
f4.venues << v2 << v3 << v6 << v9

puts "Assign favourites to Users"
u1.favourites << f1
u2.favourites << f4
u3.favourites << f2
u4.favourites << f3

Night.destroy_all
n1 = Night.create :name => "Post Exam Celebrations"
n2 = Night.create :name => "Lockdown is over!"
n3 = Night.create :name => "Joel's Birthday"
puts "#{ Night.count } nights"

n1.users << u1
n2.users << u3 << u4
n3.users << u1 << u2 << u3 << u4
puts "Assign users to Nights"

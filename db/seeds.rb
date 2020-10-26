
User.destroy_all
u1 = User.create :email => 'max@ga.co', :password => 'chicken'
u2 = User.create :email => 'john@ga.co', :password => 'chicken'
u3 = User.create :email => 'bindo@ga.co',:password => 'chicken', :admin => true
puts "#{ User.count } users"

Director.destroy_all
d1 = Director.create :name => 'Pete Docter'
d2 = Director.create :name => 'Brad Bird'
d3 = Director.create :name => 'John Lasseter'
d4 = Director.create :name => 'Andrew Stanton'

puts "#{ Director.count } directors"

Mylist.destroy_all
my1 = Mylist.create :title => 'latest'
my2 = Mylist.create :title => 'top 5'
puts "#{ Mylist.count } mylists"

Movie.destroy_all
m1 = Movie.create(:title => 'Toy Story', :year => '1995', :length => 81)
m2 = Movie.create(:title => "A bug's Life", :year => '1998', :length => 95)
m3 = Movie.create(:title => 'Toy Story 2', :year => '1999', :length => 93)
m4 = Movie.create(:title => 'Monsters Inc', :year => '2001', :length => 92)
m5 = Movie.create(:title => 'Finding Nemo', :year => '2003', :length => 107)
m6 = Movie.create(:title => 'The Incredibles', :year => '2004', :length => 116)
m7 = Movie.create(:title => 'Cars', :year => '2006', :length => 117)
m8 = Movie.create(:title => 'WALL-E', :year => '2008', :length => 104)
m9 = Movie.create(:title => 'Up', :year => '2009', :length => 101)
puts "#{ Movie.count} movies"

#

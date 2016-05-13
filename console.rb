require_relative( 'models/team.rb' )
require_relative( 'models/match.rb' )
require( 'pry-byebug' )

Match.delete_all()
Team.delete_all()

team1 = Team.new( { 'team_name' => 'Radges', 'location' => 'Edinburgh' } )
team2 = Team.new( { 'team_name' => 'Bams', 'location' => 'Glasgow' } )
team3 = Team.new( { 'team_name' => 'Beanos', 'location' => 'Dundee' } )
team4 = Team.new( { 'team_name' => 'Jammy Dodgers', 'location' => 'Inverness' } )

t1 = team1.save
t2 = team2.save
t3 = team3.save
t4 = team4.save

match1 = Match.new( { 'home_score' => 8, 'away_score' => 5, 'home_id' => t1.id, 'away_id' => t2.id } )
match2 = Match.new( { 'home_score' => 8, 'away_score' => 4, 'home_id' => t2.id, 'away_id' => t1.id } )
match3 = Match.new( { 'home_score' => 2, 'away_score' => 5, 'home_id' => t1.id, 'away_id' => t3.id } )
match4 = Match.new( { 'home_score' => 7, 'away_score' => 6, 'home_id' => t3.id, 'away_id' => t1.id } )
match5 = Match.new( { 'home_score' => 5, 'away_score' => 2, 'home_id' => t1.id, 'away_id' => t4.id } )
match6 = Match.new( { 'home_score' => 2, 'away_score' => 7, 'home_id' => t4.id, 'away_id' => t1.id } )
match7 = Match.new( { 'home_score' => 10, 'away_score' => 6, 'home_id' => t2.id, 'away_id' => t3.id } )
match8 = Match.new( { 'home_score' => 3, 'away_score' => 1, 'home_id' => t3.id, 'away_id' => t2.id } )
match9 = Match.new( { 'home_score' => 5, 'away_score' => 7, 'home_id' => t2.id, 'away_id' => t4.id } )
match10 = Match.new( { 'home_score' => 2, 'away_score' => 3, 'home_id' => t4.id, 'away_id' => t2.id } )
match11 = Match.new( { 'home_score' => 9, 'away_score' => 3, 'home_id' => t3.id, 'away_id' => t4.id } )
match12 = Match.new( { 'home_score' => 7, 'away_score' => 3, 'home_id' => t4.id, 'away_id' => t3.id } )

m1 = match1.save
m2 = match2.save
m3 = match3.save
m4 = match4.save
m5 = match5.save
m6 = match6.save
m7 = match7.save
m8 = match8.save
m9 = match9.save
m10 = match10.save
m11 = match11.save
m12 = match12.save

binding.pry
nil
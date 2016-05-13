require_relative( 'models/team.rb' )
require_relative( 'models/match.rb' )
require( 'pry-byebug' )

Match.delete_all()
Team.delete_all()

team1 = Team.new( { 'team_name' => 'Dodge This', 'location' => 'Edinburgh' } )
team2 = Team.new( { 'team_name' => 'Jammy Dodgers', 'location' => 'Glasgow' } )

t1 = team1.save
t2 = team2.save

match1 = Match.new( { 'home_score' => 8, 'away_score' => 5, 'home_id' => t1.id, 'away_id' => t2.id } )

m1 = match1.save

binding.pry
nil
require( 'minitest/autorun' )
require( 'minitest/rg' )
require_relative( '../models/league.rb' )
require_relative( '../models/match.rb' )
require_relative( '../models/team.rb' )

class TestLeague < MiniTest::Test

  def setup()
    team1 = Team.new( { 'team_name' => 'Radges', 'location' => 'Edinburgh' } )
    team2 = Team.new( { 'team_name' => 'Bams', 'location' => 'Glasgow' } )
    team3 = Team.new( { 'team_name' => 'Beanos', 'location' => 'Dundee' } )
    team4 = Team.new( { 'team_name' => 'Jammy Dodgers', 'location' => 'Inverness' } )

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

    @matches = [ match1, match2, match3, match4, match5, match6, match7, match8, match9, match10, match11, match12 ]
    @league = League.new( @matches )
  end

  

end
require( 'minitest/autorun' )
require( 'minitest/rg' )
require_relative( '../models/league.rb' )
require_relative( '../models/match.rb' )
require_relative( '../models/team.rb' )
require_relative( '../db/sql_runner.rb' )

class TestLeague < MiniTest::Test

  def setup()
    t1 = Team.new( { 'id' => 1, 'team_name' => 'Radges', 'location' => 'Edinburgh' } )
    t2 = Team.new( { 'id' => 2, 'team_name' => 'Bams', 'location' => 'Glasgow' } )
    t3 = Team.new( { 'id' => 3, 'team_name' => 'Beanos', 'location' => 'Dundee' } )
    t4 = Team.new( { 'id' => 4, 'team_name' => 'Jammy Dodgers', 'location' => 'Inverness' } )

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

    @teams = [ t1, t2, t3, t4 ]
    @matches = [ match1, match2, match3, match4, match5, match6, match7, match8, match9, match10, match11, match12 ]
    @league = League.new( @matches )
  end

  def test_total_num_of_matches()
    result = @league.total_num_of_matches
    assert_equal( 12, result )
  end

  def test_total_points_scored()
    result = @league.total_points_scored
    assert_equal( 120, result )
  end

  def test_num_of_wins_for_t1()
    result = @league.num_of_wins( @teams[ 0 ] )
    assert_equal( 3, result )
  end

  def test_num_of_league_points_for_t3()
    result = @league.num_of_league_points( @teams[ 2 ] )
    assert_equal( 8, result )
  end

  def test_league_table()
    t1_points = @league.num_of_league_points( @teams[0])
    t2_points = @league.num_of_league_points( @teams[1])
    t3_points = @league.num_of_league_points( @teams[2])
    t4_points = @league.num_of_league_points( @teams[3])

    puts "Team         |  League Points"
    print "-------------------------------"
    puts ""
    puts "Radges         |  " << t1_points.to_s
    print "-------------------------------"
    puts ""
    puts "Bams           |  " << t2_points.to_s
    print "-------------------------------"
    puts ""
    puts "Beanos         |  " << t3_points.to_s
    print "-------------------------------"
    puts ""
    puts "Jammy Dodgers  |  " << t4_points.to_s
  end

end
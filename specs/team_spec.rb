require( 'minitest/autorun' )
require( 'minitest/rg' )
require_relative( '../models/team.rb' )

class TestTeam < MiniTest::Test

  def setup()
    @team1 = Team.new( { 'name' => 'Dodge This', 'location' => 'Edinburgh' } )
  end

  def test_team_has_name()
    tested = @team1.team_name
    assert_equal( 'Dodge This', tested )
  end

end
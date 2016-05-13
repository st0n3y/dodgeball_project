require_relative( '../db/sql_runner' )

class Match

  attr_accessor :id, :home_score, :away_score, :home_id, :away_id

  def initialize( params )
    @id = params[ 'id' ].to_i
    @home_score = params[ 'home_score' ].to_i
    @away_score = params[ 'away_score' ].to_i
    @home_id = params[ 'home_id' ].to_i
    @away_id = params[ 'away_id' ].to_i
  end

  def save()
    sql = "INSERT INTO matches ( home_score, away_score, home_id, away_id ) 
          VALUES ( #{ @home_score }, #{ @away_score }, #{ @home_id }, #{ @away_id }
          )
          RETURNING *;"

    return Match.map_item( sql )
  end

  def update()
    sql = "UPDATE teams 
            SET team_name = '#{ @team_name }', location = '#{ @location }', 
            WHERE id = #{ @id };"
    sql = "UPDATE matches
          SET home_score = #{ @home_score }, away_score = #{ @away_score }, home_id = #{ @home_id }, away_id = #{ @away_id }
          "
    return Team.map_items( sql )
  end





  def self.delete_all()
    sql = "DELETE FROM matches;"
    SqlRunner.run( sql )
  end

  def self.map_items( sql )
    matches = SqlRunner.run( sql )
    result = matches.map { |match| Match.new( match ) }
    
    return result
  end

  def self.map_item( sql )
    result = Match.map_items( sql )
    
    return result.first
  end

end
class Match

  def initialize( params )
    @id = [ 'id' ]
    @home_score = params[ 'home_score' ]
    @away_score = params[ 'away_score' ]
    @home_id = params[ 'home_id' ]
    @away_id = params[ 'away_id' ]
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
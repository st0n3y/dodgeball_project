class League

  def initialize( matches )
    @matches = matches
  end

  def total_num_of_matches()
    return @matches.length
  end

  def total_points_scored()
    total = 0
    @matches.each { |match| total += ( match.home_score + match.away_score ) }
    return total
  end

  def num_of_wins( team )
    total = 0
    for match in @matches
      if match.home_id == team.id && match.home_score > match.away_score
        total += 1
      elsif match.away_id == team.id && match.away_score > match.home_score
        total += 1
      end
    end
    return total
  end

  def num_of_league_points( team )
    total = 0
    for match in @matches
      if match.home_id == team.id && match.home_score > match.away_score
        total += 2
      elsif match.away_id == team.id && match.away_score > match.home_score
            total += 2
      elsif match.home_id == team.id && match.home_score == match.away_score
        total += 1
      elsif match.away_id == team.id && match.away_score == match.home_score
        total +=1
      end
    end
    return total
  end

end
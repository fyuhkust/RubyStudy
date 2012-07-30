class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

class RPS
  
  def rps_tournament_winner(game)
    if(game[0][0].is_a? String)
      return rps_game_winner(game)
    end
    return rps_tournament_winner([rps_tournament_winner(game[0]),rps_tournament_winner(game[1])])
  end
  
  
  def rps_game_winner(game)
    raise WrongNumberOfPlayersError unless game.length == 2
    
    # allS = Set.new['R', 'P', 'S' ]
    
    allS = ['R', 'P', 'S']
    
    p1 = game[0][1]
    p2 = game[1][1]
    
    # puts p1
    # puts p2
    
    if(allS.include?(p1) && allS.include?(p2))
      if(p1 == p2)
        puts "Draw"
      else
        if(winner(p1,p2) == p1)
          puts "Winder is #{game[0][0]} with #{game[0][1]}"
          return game[0]
        else
          puts "Winder is #{game[1][0]} with #{game[1][1]}"
          return game[1]
        end
      end
    else
      raise NoSuchStrategyError
    end
    
    return 
  end
  
  def winner(p1,p2)
    if (p1 == 'R' && p2 == 'S')
      return 'R'
    elsif (p1 == 'R' && p2 == 'P')
      return 'P'
    elsif (p1 == 'S' && p2 == 'P')
      return 'S'
    end
  end

end


game = [ [ "Armando", "P" ], [ "Dave", "S" ] ]
RPS.new().rps_game_winner(game)

tournament = [
[
[ ["Armando", "P"], ["Dave", "S"] ],
[ ["Richard", "R"], ["Michael", "S"] ],
],
[
[ ["Allen", "S"], ["Omer", "P"] ],
[ ["David E.", "R"], ["Richard X.", "P"] ]
]
]

RPS.new().rps_tournament_winner(tournament)

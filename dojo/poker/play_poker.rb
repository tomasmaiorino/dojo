require_relative 'poker'
class PlayPoker

	attr_accessor :p

	def initialize
		@p = Poker.new
	end

	def play(players)
		players.each {|key, value|
  			value = @p.get_points(value)
		}
		#return Hash[result.sort_by{|k, v| v}.reverse]
		return players
	end

	def get_winner(players)
		result = play(players)
		#puts "result #{result}"
		return players[result.keys.first]
	end

	def create_game_using_players(players)
		return @p.create_game_using_players(players)
	end

	def lets_play(players)
		players = @p.create_game_using_players(players)
		#winner = get_winner(players)
		puts ":) -- The Winner is #{winner} -- :)"
	end

	def is_a_tie(results)
		count = 0
		temp_list = {}
		results.each {|key, value|
			if temp_list.has_key?(value)
				temp_list[value] = temp_list[value] + 1
			elsif
				temp_list[value] = 1
			end
		}
		if results.size == temp_list.size
			return false
		end
		if Hash[temp_list.sort][temp_list.keys.first] == 1
			return false
		end
		true
	end

end

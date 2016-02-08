defmodule BeerSong do 
	def sing do 
		Enum.map 99..0, fn(beers) -> 
			IO.puts "#{count(beers)} of beer on the wall, #{count(beers) |> String.downcase} of beer.
#{reaction(beers)}, #{count(beers - 1) |> String.downcase} of beer on the wall.
"
	    end
	end

	def count(beers) when beers < 0, do: "99 bottles"
	def count(0), do: "No more bottles"
	def count(1), do: "1 bottle"
	def count(beers), do: "#{beers} bottles"

	def reaction(0), do: "Go to the store and buy some more"
	def reaction(beers), do: "Take one down and pass it around"
		
	
end
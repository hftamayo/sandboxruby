evens = [2, 4, 6, 8]
odds = [1, 3, 5, 7]
squares = Proc.new{|num| num ** 2}
square_of_evens, square_of_odds = [evens, odds].map{|array| array.map(&squares)}
p square_of_evens
p square_of_odds

#calcular squares y cubes
evens = [2, 4, 6, 8]
odds = [1, 3, 5, 7]
squares = Proc.new{|num| num ** 2}
cubes = Proc.new{|num| num ** 3}
square_of_evens, square_of_odds = [evens, odds].map{|array| array.map(&squares)}
cubes_of_evens, cubes_of_odds = [evens, odds].map{|array| array.map(&cubes)}
p square_of_evens
p square_of_odds
p cubes_of_evens
p cubes_of_odds
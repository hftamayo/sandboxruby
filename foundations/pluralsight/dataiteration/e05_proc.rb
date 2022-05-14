#object that essentially servers as a saved block

#ejemplo 1: finding squares using blocks
evens = [2, 4, 6, 8]
odds = [1, 3, 5, 7]

square_of_evens = evens.map{|num| num ** 2}
square_of_odds = odds.map{|num| num ** 2}

p square_of_evens
p square_of_odds

#ejemplo 2: finding squares using procs
squares = Proc.new {|x| x ** 2}
even_squares = evens.map(&squares)
odd_squares = odss.map(&squares)
p even_squares
p odd_squares

#ejemplo 3: filtering even and odd numbers
nums = [1, 2, 3, 4, 5]
is_even = Proc.new{|num| num % 2 == 0}
is_odd = Proc.new{|num| num % 2 == 1}
p nums.select(&is_even)
p nums.select(&is_odd)

#ejemplo 4: passing proc as a parameter
def my_method
    puts "inside my method"
    yield
end
my_proc = Proc.new{ puts "inside the proc" }
my_method(&my_proc)

#ejemplo 5: using the call method
greet = Proc.new{puts "Hello world"}
greet.call




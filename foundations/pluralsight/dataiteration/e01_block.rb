#curly braces
3.times { puts "testing..."}

#do...end keywords
3.times do
    puts "inside the block"
end

array = [2,3,4]
array.each{ |num| puts "#{num}"}

#el mismo arreglo
array.each do |num|
    puts "#{num}"
end

#ejemplo1 de block method
def my_method
    puts "inside my method"
end

my_method do
    puts "block as argument"
end

#ejemplo 2
def my_method2
    puts "inside my method"
    yield
end

my_method2 do
    puts "block as argument"
end

#ejemplo de block con arguments
def greet
    puts "what's your name"
    name = gets.chomp
    yield name
end

greet do |name|
    puts "Hello #{name}"
end

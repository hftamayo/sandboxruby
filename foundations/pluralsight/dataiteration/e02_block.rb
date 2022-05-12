def my_method
    puts "inside my method"
    yield #es una especie de jump o go to, en este caso ejecuta my_method
end

my_method do
    puts "inside the block"
end

my_list = ["milk", "bread", "fruits", "greens"]

def print_list(my_list)
    counter = 0
    puts "printing the list\n"
    yield #salta a la linea 21 y regresa
    my_list.each{|item| print "#{counter += 1} - #{item} \n"}
    yield #salta a la linea 21 y regresa
end

print_list(my_list) do
    puts "*******"
end



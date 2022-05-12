#ejemplo 1
string = "ruby"
string.each_char{|letter| print "#{letter} "}

#ejemplo 2
i = 0
lang = "Ruby
Java
Python
C
"
lang.each_line{|line| print "#{i +=1} #{line}"}

#ejemplo 3
2.upto(6) { |num| print num, " "} #2 3 4 5 6

#ejemplo 4
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
print arr.delete_if{|num| num > 7} #imprime del 1 al 7

#ejemplo 5
print arr.reject{|num| num > 7}#imprime del 1 al 7

#ejemplo 6
print arr.count{|c| c== 9} #imprime 1 porque unicamente 1 numero cumple la condicion

#ejemplo 7
hash = {'name' => 'John', 'age' => '18'}
hash.each do |key, value|
    puts "key: #{key}, value: #{value}"
end

#ejemplo 8
hash.each_value{|val| puts "value: #{val}"}


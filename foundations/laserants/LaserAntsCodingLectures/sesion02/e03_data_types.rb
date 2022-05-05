# STRINGS
p "estudiantes".class
p "estudiantes".gsub('s', 'z')
p ":D D:".match(/:D/) ? "Found" : "Not found"

# puts "Hello, world!".class
# puts "Hello, world".class.ancestors
# p "Esto es un string".class.methods


# variable_texto = "Esto es un string"
# p "Esto es un string".eql? variable_texto
# p "Esto es un string" == variable_texto

pedazo_codigo = "la"
p "Esto es la clase de Ruby".include? pedazo_codigo

# class String
  
  # def initialize; end
  
  # def include?
    # si str ? true : false
  # end
  
# end

string_completo = "Hola estudiantes"
p string_corto = string_completo[1,3]

numero_previo = "CODIGO001"
p numero_previo[/[0-9]+/].to_i + 1

numero_previo = "CODIGO001"
p numero_previo[-3..-1]

numero_previo = "CODIGO001"
p numero_previo[-3, 3]



# a programmer implements this function
def half(x)
  return x / 2 if x % 2 == 0
end
p [1,2].map(&method(:half)) # suppose a that another programer doesn't read the implementation just uses the method

# ARRAY => 
impares = [ 10, 32, 13, 44, 15, 26 ].select { |x| x.odd? }
# [ 10, 32, 13, 44, 15, 26 ].select do |x|
  # p x.odd?
# end

# p impares # [13, 15]

numeros_lista = [ 10, 32, 13, 44, 15, 26 ].sort
p numeros_lista # [10, 13, 15, 26, 32, 44]

# HASH  => [
#   { nombre => "Ramón", edad => 32, genero => "male" },
#   { nombre => "William", edad => 34, genero => "male" },
#   { nombre => "Alejandra", edad => 18, genero => "female" },
# ]

hash = { "nombre" => "Ramón", "edad" => 32, "genero" => "male" }

hash = { "nombre" => "Ramón", "edad" => 32, "genero" => "male" }

hash.values 

hash.keys.each do |key| 
  puts hash[:key]
end

hash.keys.each {|key| puts hash[key]}

hash.each do |llave, valor|
  puts "#{llave}: #{valor}"
end

p [1,2,3,4,5,6,7,8,9,10].reduce(:+) # 55
p [1,2,3,4,5,6,7,8,9,10].inject(10) {|memo, num| memo += num } #
# EXPRESIONES Y OPERADORES"

# puts => keyword
puts "Hello world"
puts 20 + 10

# method
def saludar valor
  "Hola " + valor
end
puts saludar("estudiantes")

def metodo_multiplicar valor = 2
  valor * 2
end
puts metodo_multiplicar()

# EXPRESIONES 
"a" + "b" + "c" # abc

x = 10
a = x + 20 # 30
b = a ** 2 # 900

# OPERADORES MATEMATICOS
# + - / * %
# Funcionan números sino también con strings.

puts "Hola " * 2 # Hola Hola

# OPERADORES DE COMPARACIÓN

age = 10
puts "No tienes permisos para utilizar este sistema" if age < 18

# && => AND
age = 24
puts "You're a teenager" if age > 12 && age < 20 # No response 

age = 24
puts "You're NOT a teenager" unless age > 12 && age < 20 # You're NOT a teenager

# NEGAR UNA EXPRESIÓN
if !(age > 12 && age < 20)
  puts "You're NOT a teenager"
end

# If ternario
age = 25
p age > 12 && age < 20 ? "You're a teenager" : "You're not a Teenager"


gender ="male"
age = 6
puts "A very young or old man" if gender == "male" && (age < 18 || age > 85)
# YIELDS
arr = [1, 2, 3, 4]
x = arr.map { |x| x**2 }
p x # [3, 4, 5, 6]

def print_twice
  yield
  yield
end

print_twice { puts "Hola" }

# GET => mipagina.com/home/show
# app
#  controllers
#    home -> index, show, edit
#  views
#    layouts
#      application.html.erb
#        header
#        sidebar
#          yield
#        footer
#    home
#      () -> { index.html.erb }
#      show.html.erb
#      edit.html.erb


# BLOCKS
[1, 2, 3].each { |n| puts n } # 1, 2, 3

      
a = ["a", "b", "c", "d"]
arr = a.collect { |x| x + "!" }
p arr # ["a!", "b!", "c!", "d!"]


def half(x)
  return x / 2 if x % 2 == 0
end

[1,2].map(&method(:half))


value = "Hola"
def metodo(value)
  value = "Mundo"
  p value
end
metodo(value)
p value
p [1, 2].map(&:to_s) # ["1", "2"]


def metodo_block(&block)
  if block_given?
    puts "Método con block"
  else
    puts "Método sin block"
  end
end
metodo_block { "Función" }


# PROCS
my_proc = Proc.new { |name| puts "Imprimiendo el nombre de: " + name.to_s }

my_proc.call("William")
my_proc["William"]
my_proc.("William")

# []
# .()
# .call

square = Proc.new {|x| x**2 }
p square.call(3)

sumar = Proc.new { |a, b| a + b }
puts sumar.(1, 2)

new_proc = Proc.new do | value |
  puts "My value: " + value 
end

new_proc.call("Valor")

my_reverse_proc = Proc.new { |str| p str.reverse }
my_reverse_proc.call("Cadena")



def metodo_block(&block)
  if block_given?
    puts "Método con block"
  else
    puts "Método sin block"
  end
end
value = true
metodo_block { value }


# LAMBDA
my_lambda = lambda { puts "hello world" } 
my_lambda.call # hello world
my_lambda.()   # hello world
my_lambda.[]   # hello world
my_lambda.===  # hello world

flambda = -> (x) { puts "Hello #{x}" }
flambda.call("Estudiantes", "Maestro")
# Hello Estudiantes
flambda.call("Estudiantes", "Maestro")
# ArgumentError :: Wrong number of arguments (given 2, expected 1)

# MODELO
# app/models/product.rb
  # validates :price, default: 0.0
  # scope :suma_productos_caros, -> { order(price: :desc).first(5).pluck(:price).inject(:+) }
  # scope :productos_en_minimos, -> (valor = 5) { where('stock <= ?', valor) }
  
  # <Product @title="Jabón de manos" @price=200.0 @desc="..." @stock=5 >
  # <Product @title="Jabón de platos" @price=199.0 @desc="..." @stock=3 >
  # <Product @title="Crema para manos" @price=198.0 @desc="..." @stock=24 >
  # <Product @title="Crema de cara" @price=197.0 @desc="..." @stock=37 >
  # <Product @title="Crema de pies" @price=196.0 @desc="..." @stock=10 >
  
  # [200,199,198,197,196] => 990
  
  # def self.total_products
    # suma_productos_caros
  # end


# CONTROLADOR

  # def show
    # @product = Product.find_by id: 2
    # @suma_productos_caros = Product.suma_productos_caros
    # @productos_en_minimos = Product.productos_en_minimos(10)
  # end

# VISTAS
  # Product
    # show/1
  
    #  <h3>Contador de productos</h3>
    # <%= Product.suma_productos_caros %>
    # <%= @product.title %> # Jabón de platos
result = []
enum = 1.upto(1000)
enum.filter_map { |i| result << i + 1 if i.even? }
p result
#same as procs but differs in how it threats its arguments and the return keyword
#valida la cantidad de argumentos recibidos y si no son los esperados genera error
#devuelve el control al metodo

#ejemplo 1
proc = Proc.new{puts "this is a proc"}
lambda = lambda {puts "this is a lambda"}

#ambos son objetos de la misma clase
p proc.class #proc
p lambda.class #proc

#ejemplo 2: argument handling
proc = Proc.new{|name| puts "name is: #{name}"}
proc.call("John", "Doe") #2 argumentos, devuelve john
proc.call #no argumentos, devuelve vacio
proc.call("John") #1 argumento, devuelve john

#ejemplo 3: usando lambdas
lambda = lambda {|name| puts "name is: #{name}"}
lambda.call("john", "doe") #argumenterror
lambda.call
lambda.call("john")

#ejemplo 4
def a_lambda
    lambda = lambda{ return }
    lambda.call
    puts "end of method"
end

a_lambda




def add_suffix(suffix)
  
end
add_ly = add_suffix("ly")
p add_ly.call("hopeless")
p add_ly.call("total")

# Pablo Méndez
def add_suffix(suffix)
  proc { |word| word + suffix }
end

#Julian Rodriguez
def add_suffix(suffix)
  Proc.new { |x| x << suffix}
end

#Bruno
def add_suffix(suffix)
  proc { |word| "#{word}#{suffix}" }
end

add_ly = add_suffix("ly")
p add_ly.call("hopeless")
p add_ly.call("total")

# Guillermo
def add_suffix(suffix)
  proc {|w = ''| w.concat(suffix)}
end

#Luis
def add_suffix(suffix)
  proc { |string| "#{string}#{suffix}" }
end

add_ly = add_suffix("ly")
p add_ly.call("hopeless")
p add_ly.call("total")

#Shubert
def add_suffix(suffix)
 Proc.new {|x| x + suffix}
end

add_ly = add_suffix("ly")

p add_ly.call("hopeless")
p add_ly.call("total")

#ramon
def add_suffix(suffix)
  -> (name) {name + suffix}
end

add_ly = add_suffix("ly")
puts add_ly.call("hopeless")
puts add_ly.call("total")

# Eleazar
def add_suffix(suffix)
  Proc.new { |word| word + suffix }
end

add_ly = add_suffix("ly")
p add_ly.call("hopeless")
p add_ly.call("total")


#alex
def add_suffix(suffix)
  Proc.new {|word| word + suffix}
end

add_ly = add_suffix("ly")
p add_ly.call("hopeless")
p add_ly.call("total")

#Cristian
def add_suffix(suffix)
  proc { |x| x+suffix }
end

add_ly = add_suffix("ly")
p add_ly.call("hopeless")
p add_ly.call("total")

#Andrea 
def add_suffix(suffix)
  proc_palabra = proc {|palabra| palabra + suffix}
end

add_ly = add_suffix("ly")
p add_ly.call("hopeless")
p add_ly.call("total")

#Alejandra
def add_suffix(suffix)
  my_proc = proc {|a| a + suffix}
end
add_ly = add_suffix("ly")
p add_ly.call("hopeless")
p add_ly.call("total")

# Angel
def add_suffix(suffix)
  suffix_proc = -> (suffix) { | suffix | word + suffix}
end
test_suffix = add_suffix("test")
p test_suffix.call("this is a")

# SCOPE GENERAL
proc_array = proc { |x| x ** 2 }
[1, 2, 3, 4, 5].map(&proc_array)

# SCOPE EN FUNCIÓN
def add_suffix(suffix)
  proc {|word| word + suffix}
end
add_suffix("ly").call("total")
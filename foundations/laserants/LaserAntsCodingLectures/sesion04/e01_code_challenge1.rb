arr = [1, 3, 5, 7, 9].map()


#ramon pocon
array_proc2_times = Proc.new {|a| a ** 2}
puts [2,4,6].map(&array_proc2_times)


#alex
square = Proc.new {|x| x**2}
p [1, 3, 5, 7, 9].map(&square)

# Pablo Mendez
arr.map { |x| puts x ** 2  }

power = proc do |x| 
  proc { |y| y ** x }
end
puts arr.map(&power.(2))

#Eleazar
square = Proc.new{|number| number ** 2}
p [1, 3, 5, 7, 9].map(&square)

#Cristian
myproc = proc {|num| num**2}
p [1, 3, 5, 7, 9].map(&myproc)

# Guillermo  
g_proc = proc {|x| x**2} 
p [1, 3, 5, 7, 9].map {|a| g_proc.call(a) } 

#Bruno
square = proc { |num| num**2 }
p [1, 3, 5, 7, 9].map(&square)

#Andrea
my_procs = Proc.new {|numero| puts numero ** 2}
arr = [1, 3, 5, 7, 9].map(&my_procs)  

#Luis
the_proc = proc {|n| n ** 2}
p [1, 3, 5, 7, 9].map(&the_proc)

  #Alejandra
new_proc = proc{|value| value **2} 
p [1, 3, 5, 7, 9].map(&new_proc)

# Shubert
[1,2,3,4,5].map { |n| 
t = Proc.new { |x| p x**2 } 
t.call(n) 
}

#Julian 
my_proc = Proc.new{ |x| x**2 }
p [1,2,3,5].map(&my_proc)
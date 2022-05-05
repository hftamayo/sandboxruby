def attendance_list(names)
end

attendance_list(["Sarah Smith", "John Jones", "Mickey Mouse"]) { |x| x.split[0] }
# ➞ ["Sarah", "John", "Mickey"]


# Guillermo
def attendance_list(names)
  names.map {|name| yield name}
end
p attendance_list(["Sarah Smith", "John Jones", "Mickey Mouse"]) { |x| x.split[0] }

# Pablo Méndez
def attendance_list(names, &block)
  block_given? ? names.map(&block) : names
end

#Bruno
def attendance_list(names)
  names.map { |name| yield name }
end

p attendance_list(['Sarah Smith', 'John Jones','Mickey Mouse']) 

# Angel
def attendance_list(names_list, &get_fname)
  # calls the proc on the func call for each name if there's any
  block_given? ? names_list.map(&get_fname) : names_list
end

# returns ['Sarah Smith', 'John Jones','Mickey Mouse'] as there's no code block
p attendance_list(['Sarah Smith', 'John Jones','Mickey Mouse']) 

# Eleazar
def attendance_list(names)
  names.map{ |person_name| yield person_name}
end

p attendance_list(["Sarah Smith", "John Jones", "Mickey Mouse"]) { |x| x.split[0] }

#ramon

def attendance_list(names)
    names.map{|name| yield name}
end

p attendance_list(["sarah Smith","john Jones","mickey Mouse"]) {|x| x.split[0]}

# Edman
def attendance_list(names)
  names.map { |name| p yield name}
end

attendance_list(["Sarah Smith", "John Jones", "Mickey Mouse"]) { |x| x.split }

#Alejandra
def attendance_list(names)
  names.map do |x|
    yield x
  end
end

p attendance_list(["Sarah Smith", "John Jones", "Mickey Mouse"]) { |x| x.split[0] }

#Julian
def attendance_list(names, &block)
    names.map { |name| block.call(name)}
end

#Andrea
def attendance_list(names)
  names.map{|nombre| puts yield nombre}
end

# Si no hay block, regresar la lista de nombre intacta
def attendance_list(names, &block)
  return names unless block_given?

  names.map(&block)
end


attendance_list(["Sarah Smith", "John Jones", "Mickey Mouse"]) { |x| x.split[0] }







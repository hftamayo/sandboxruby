=begin
self == this
las funciones en ruby en realidad son metodos que pertenecen al main object
=end

def words_from_file(text_file)
    File.read(text_file).downcase.gsub(/[^a-z]/, " ").split
end

words = words_from_file("romeo-juliet.txt")
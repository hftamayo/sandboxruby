FILE_NAME = "romeo-juliet.txt"
romeo_and_juliet = File.read(FILE_NAME)

#remove characters
romeo_and_juliet.gsub("\n", " ")

#using regular expressions
#sustituir cualquier caracter con excepcion de "a" y reemplazar por X
romeo_and_juliet.gsub(/[^a]/, "X")
#reemplaze con un espacio cualquier caracter que no coincida entre a-z
romeo_and_juliet.gsub(/[^a-z]/, " ")
#splitting a sentence, se convierte en un array
"the quick brown sloth jumped over a lazy log".split
#desplegando el contenido del libro verticalmente
romeo_and_juliet.gsub(/[^a-z]/, " ").split

#uso de las comillas dobles: se puede incluir operaciones con variables:
a = 41
puts "the answer is #{a + 1}"
puts 'the anwser is #{a + 1}'
#uso escaping
puts 'Let\'s try!'
#las comillas simples toman literal todo y lo convierten a string

=begin
hashes en ruby es la estructura de datos equivalente a otros lenguajes a:
hashtable, hashes, maps, dictionary

es una colección de keys y values
=end

h = {"key1" => "value1", "key2" => "value2", "key3" => "value3", 10 => 9.9}
h["key2"]
h[10]
h["new key"] = "new value"
h["new key"]

h #ver todo el hash

word_count = {}
word = "love"
word_count[word] #devuele nil 
word_count[word] = 1
word_count[word] += 1

word_count #devuelve "love" como una key y 2 como value


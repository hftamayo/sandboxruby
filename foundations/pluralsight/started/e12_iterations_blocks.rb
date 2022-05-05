numbers = [41, 100, -1]
numbers.each {|x| puts(x + 1)} #este es un ejemplo de blocks
#imprime cada elemento incrementado en 1

TEXT_FILE = "romeo-juliet.txt"

#load words from file
def words_from_file(text_file)
    File.read(text_file).downcase.gsub(/[^a-z]/, " ").split
end

#load the list of words in the text
words = words_from_file(TEXT_FILE)

#create a dictionary of word counts
word_count = {}

words.each do |word| #por cada elemento recorra el block del 20 al 22
    #if the word is new, add it to the word_count
    word_count[word] = 1
    #else, increment its count
    word_count[word] += 1
end


TEXT_FILE = "romeo-juliet.txt"
REFERENCE_TEXT_FIEL = "hamlet.txt"

def words_from_file(text_file)
    begin
        File.read(text_file).downcase.gsub(/[^a-z]/, " ").split
    rescue
        puts "this is the book #{text_file} and let's proceed"
        exit
end

words = words_from_file(TEXT_FILE)
words_to_remove = words_from_file[REFERENCE_TEXT_FIEL].uniq

words_to_remove.each do |word|
    words.delete word
end

WORD_COUNT = {}
words.each do |word|
    WORD_COUNT[word] = 0 unless WORD_COUNT[word]
    WORD_COUNT[word] += 1
end

=begin
WORD_COUNT.sort_by {|word, count| count }
            .reverse[0..40] #las 40 palabras con mas hits
            .each{|word, count| puts "#{word}: #{count}"}
=end
TEXT_FILE = "romeo-juliet.txt"

def words_from_file(text_file)
    begin
        File.read(text_file).downcase.gsub(/[^a-z]/, " ").split
    rescue
        puts "this is the book #{text_file} and let's proceed"
end

words = words_from_file(TEXT_FILE)

word_count = {}
words.each do |word|
    word_count[word] = 0 unless word_count[word]
    word_count[word] += 1
end

begin
    login()
rescue UnknownUsernameError => e
    log(e)
    raise e
else
    puts "welcome back"
ensure
    log("user login")
end
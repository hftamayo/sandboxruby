word_count = {}
word = "juliet"
word_count[word] #devuelve nil

word_count[word] = 1
word_count #"juliet" -> 1

if word_count[word] == nil
    word_count[word] = 1
else
    word_count[word] += 1
end

#refactoring the conditional
if word_count[word] == nil
    word_count[word] = 0
end
word_count[word] += 1

#refactoring al estilo ruby

word_count[word] = 0 if word_count[word] == nil
word_count[word] += 1

#otros ejemplos de condicionales
"this is true" if true #true
"This is true" if false #nil
"This is true" if 0 #this is true
"This is true" if "" #this is true pero con un warning

#en ruby son falsos unicamente los valores false y nil
"This is true" if nil
"This is true" if !nil #true

#refactorando en base a esto
word_count[word] = 0 if !word_count[word]
word_count[word] += 1

#refactoring 2
word_count[word] = 0 unless word_count[word]
word_count[word] = 1
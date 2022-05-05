#classic approach:

for i in 0..5
    puts i
end

i = 0
while i <= 5
    puts i
    i += 1
end

i = 0
until i > 5
    puts i
    i += 1
end

#ruby style
0.upto(5) do |i|
    puts i
end

3.times do
    puts "Yay!"
end


# ITERADORES & ENUMERATOR

p 1.times.class # Enumerator
2.times do
  p "prueba"
end
# prueba
# prueba

p (1..3).each.class.ancestors # [Enumerator, Enumerable, Object, Kernel, BasicObject]

1.upto(7) { |number| puts number } 
# 1
# 2
# 3
# 4
# 5
# 6
# 7

5.downto(1) { |number| puts number } 
# 5
# 4
# 3
# 2
# 1

puts 5.times.class.ancestors # [Enumerator, Enumerable, Object, Kernel, BasicObject]

(1..5).each do |num|
  p num
end
# 1
# 2
# 3
# 4
# 5

array = [1, 2, 3].each
p array #<Enumerator: [1, 2, 3]:each>

p (0..10).any? {|element| p element < 2 } 
# true
# true
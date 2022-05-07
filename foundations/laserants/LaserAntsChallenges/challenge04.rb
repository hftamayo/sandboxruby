=begin
fecha: 05-05-2022 22 horas
enunciado:
Dada una lista (array) de  de enteros desordenada, encuentre la longitud de la secuencia de elementos consecutivos más larga.
Por ejemplo, dado [100, 4, 200, 1, 3, 2], la secuencia de elementos consecutivos más larga debería ser [1, 2, 3, 4], por lo que su longitud es 4.
=end

#utilizando el enfoque de sorting
def sequence_length1(array)
    #paso 1: acumulador para registrar los resultados por iteracion
    secuencia_mayor = 0
    
    #paso 2: loop que ordenara y evaluara cada valor
    array.sort.each_with_index do |numero, indice|
      #puts "#{indice}: #{numero}"
      secuencia_mayor += 1 unless numero+1 != array[indice+1]
    end
    return secuencia_mayor
  
    #array.sort.each{ |x| puts x+1}
    #array.sort.each do |x|
  
  =begin
    array.sort.each_with_index do |a, i|
      prev_element = array[i-1] unless i == 0
      next_element = array[i+1] unless i == array.size - 1
    end
  =end
  
  end
  
  p sequence_length1([100, 4, 200, 1, 3, 2]) #length=4
  p sequence_length1([29, 27, 28, 55, 100, 84]) #length=3
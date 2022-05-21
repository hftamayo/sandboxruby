def skip_animals(animals, skip)
    # Your code here
      arr = []
      animals.each_with_index do |item, index|
          #unless no funciono aca: arr.push("#{index}:#{item}") unless index+1 > skip
          if index + 1 > skip then arr.push("#{index}:#{item}") end
      end
      arr
  end
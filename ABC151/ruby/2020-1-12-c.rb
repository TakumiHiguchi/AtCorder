array = gets.chomp.split(' ')
array.map!{|x| x.to_i}

crear = []
result = [0,0]

array[1].times do |pas|
  test = gets.chomp.split(' ')
  
  if test[1] == "AC" && !crear.include?(test[0].to_i)
    crear.push(test[0].to_i)
    result[0] += 1
  else
    result[1] += 1 if !crear.include?(test[0].to_i)
  end
  
end
puts result.join(' ')

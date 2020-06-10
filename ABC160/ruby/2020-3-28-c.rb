array = gets.chomp.split(' ')
iti = gets.chomp.split(' ')
kyori = []
result = 0
for i in 0..(array[1].to_i - 1 ) do
    if i == (array[1].to_i - 1 )
        kyori.push((iti[i].to_i-array[0].to_i).abs + iti[0].to_i)
    else
        kyori.push((iti[i].to_i-iti[i+1].to_i).abs)
    end
end
kyori.sort!
for n in 0 ..(array[1].to_i - 2) do
    result += kyori[n]
end
puts result

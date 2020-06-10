array = gets.chomp.split(' ')
score = gets.chomp.split(' ')
sum = 0

score.each do |pas|
  sum += pas.to_i
end

if (sum+array[1].to_i)/array[0].to_i < array[2].to_i
  puts -1
else
  puts array[0].to_i*array[2].to_i - sum if array[0].to_i*array[2].to_i > sum
  puts 0 if array[0].to_i*array[2].to_i <= sum
end

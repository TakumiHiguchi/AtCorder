num = gets.chomp.to_i
uresisa = 0

uresisa += (num/500) * 1000
num = num%500
uresisa += (num/5) * 5
num = num%5


puts uresisa

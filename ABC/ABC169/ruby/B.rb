N = gets.chomp.to_i
array = gets.chomp.split(' ').map{|p| p.to_i}.sort
result = 0

N.times do |index|
    if index==0
        result = array[0]
    else
        result *= array[index]
        break if 10**18 < result || result == 0 #Point :ここの例外を入れないと、2000ms以内を達成できない
    end
end
if 10**18 >= result
    puts result
else
    puts -1
end
    
    

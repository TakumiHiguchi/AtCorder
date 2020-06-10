N,M = gets.chomp.split(' ').map{|p| p.to_i}

correct = Array.new(N,false)
_WA = Array.new(N,0)
result = [0,0]
M.times do
    array = gets.chomp.split(' ')
    
    if !correct[array[0].to_i - 1]
        if array[1] == "AC"
            correct[array[0].to_i - 1 ] = true
            result[0]+=1
        else
            _WA[array[0].to_i - 1 ] += 1
        end
    end
end

_WA.each_with_index do |val, index|
    result[1]+=val.to_i if correct[index]
end
puts result.join(' ')

#失敗: ACが出なかった問題に関しては、WAのカウントをしない

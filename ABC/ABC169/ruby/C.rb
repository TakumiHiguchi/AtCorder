require 'bigdecimal'

A, B = gets.chomp.split
puts (BigDecimal(A)*BigDecimal(B)).to_i

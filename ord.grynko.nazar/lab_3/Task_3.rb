n = gets.chomp.to_i

# task 3.5.1

result = 0
(0...n).each { |i|
  result = Math.sqrt(2 + result)
}

print result
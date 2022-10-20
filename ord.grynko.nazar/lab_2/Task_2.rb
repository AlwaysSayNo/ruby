def calculate_diap(t, r, p)
  t -= 1
  (p ** r) * (1 - p ** (-t))
end

puts "Enter P: "
p = 2 #gets.chomp.to_i

puts "Enter t: "
t = 32 #gets.chomp.to_i

puts "Enter r: "
r = 8 #gets.chomp.to_i

puts "Result diap = max|a| = #{calculate_diap(t, r, p).ceil}"
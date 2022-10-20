def make_b(arr)
  zero_pos = 0
  minus_pos = 0
  plus_pos = 0

  arr.each do |elm|
    if elm == 0
      minus_pos += 1
      plus_pos += 1
    elsif elm < 0
      plus_pos += 1
    end
  end

  b = Array.new(arr.size, 0)
  arr.each do |elm|
    if elm == 0
      b[zero_pos] = elm
      zero_pos +=1
    elsif elm < 0
      b[minus_pos] = elm
      minus_pos +=1
    else
      b[plus_pos] = elm
      plus_pos +=1
    end
  end

  b
end

a = [1, 2, -3, -4, 0, 6, -7, -8, 9, 10, 0, 12, 0]
puts "array a = #{a}"
puts "array b = #{make_b a}"

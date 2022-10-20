PI = Math::PI

def y(x, n, c)
  ((x ** -n) + (c ** -n)) ** 2
end

def z(x)
  Math.sin(2 * x) ** 2 - Math.cos(PI / 3 - 2 * x) * Math.sin(2 * x = PI / 6) - (Math.tan((PI + x) / (x + 1)) ** -1) ** (2 / x)
end

# task 5.5.1

def subtask_1(n, c)
  left_border = 1.0
  right_border = n

  step = (right_border - left_border) / (n + c).to_f

  list = []
  tmp = left_border
  while tmp <= right_border
    list.append tmp
    tmp += step
  end

  for x in list do
    puts "y(#{x}) = #{y(x, n, c)}"
    x += step
  end
end

def subtask_2(n, c)
  left_border = PI / n
  right_border = PI

  step = (right_border - left_border) / (3.0 / 2 * n + c).to_f
  x = left_border

  while x <= right_border do
    puts "z(#{x}) = #{z(x)}"
    x += step
  end
end

def subtask_3(n, c)
  left_border = 2.0
  right_border = c

  step = (right_border - left_border) / (2 * n).to_f
  x = left_border

  while x <= right_border do

    if 2 < x && x < n
      puts "f = y(#{x}) = #{y(x, n, c)}"
    elsif n < x && x < 2 * n
      puts "f = z(#{x}) = #{z(x)}"
    else
      puts "f = y(#{x}) + z(#{x}) = #{y(x, n, c) + z(x)}"
    end

    x += step
  end
end


N = 2
C = 5

subtask_1(N, C)
puts

subtask_2(N, C)
puts

subtask_3(N, C)
puts
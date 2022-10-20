def function_1(x)
  res = x * ((1 + x) ** (1.0/3))
end

def function_2(x)
  (x * (Math.log(x) ** 2)) ** -1
end


def prm(a, b, n, func)
  h = (b - a) / n
  res = 0

  (1..n).each do |i|
    x_i = a + i * h - h / 2

    res += method(func).call(x_i)
  end

  res.floor * h

end

def trp(a, b, n, func)
  h = (b - a) / n
  res = 0

  (0..n).each do |i|

    tmp = method(func).call(a + h * i)

    if i == 0 || i == n
      tmp /= 2
    end

    res += tmp
  end

  res.floor * h

end

A_1 = 1.0
B_1 = 8.0

A_2 = 0.2
B_2 = 0.3

N = 15


printf "1. Prm: #{prm(A_1, B_1, N, :function_1)}\n"
printf "1. Trp: #{trp(A_1, B_1, N, :function_1)}\n"

puts

printf "2. Prm: #{prm(A_2, B_2, N, :function_2)}\n"
printf "2. Trp: #{trp(A_2, B_2, N, :function_2)}\n"
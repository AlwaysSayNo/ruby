def func (x, i)
  fraction = (x ** (2 * i + 1) ) / (2 * i + 1)

  ((-1) ** i) * (fraction)
end

def series (x, n)
  i = 0
  sum = 0

  loop do
    iter = yield(x, i)
    sum += iter

    i += 1
    break if i > n
  end

  sum
end

def series_inf (x, eps)
  i = 0
  sum = 0

  loop do
    iter = yield(x, i)
    sum += iter

    i += 1
    break if iter.abs < (eps / 10.0)
  end

  sum
end

X = 1.0 # 0.1 - 1
N = 5 #  15 - 58
EPS = 10 ** -3

printf "Series from '#{0}' to '#{N}' with x = #{X} ==> #{series(X, N) {|x, i| func(x, i)}}\n"
printf "Infinitive series from '#{0}' with x = #{X}, epsilon = #{EPS} ==> #{series_inf(X, EPS) {|x, i| func(x, i)}}"
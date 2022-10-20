EPSILON = 0.000_01

def factorial(n)
  (n > 1 ? n * factorial(n - 1) : 1).to_f
end

def common_function(func, n, step)
  result = 0.0
  curr_iter = Float::INFINITY

  loop do
    curr_iter = method(func).call(n)
    result += curr_iter

    n = method(step).call(n)

    # puts "#{n}. #{result}"

    break if curr_iter < EPSILON / 10
  end

  # puts ""

  result
end

# task 4.5.1 (((n-1)!/(n+1)!)^(n * (n+1)))
def first_infinite_series
  def infinite_series(n)
    (factorial(n - 1) / factorial(n + 1)) ** (n * (n + 1))
  end

  def step(n)
    n + 1
  end

  common_function(:infinite_series, 2, :step)
end

 puts first_infinite_series

# task 4.5.2  1 / ((2 * n - 1) * (2 * n + 1))
def second_infinite_series
  def infinite_series(n)
    ((2 * n - 1) * (2 * n + 1)) ** -1
  end

  def step(n)
    n + 1
  end

  common_function(:infinite_series, 1, :step)
end

 puts second_infinite_series
 puts "1/2 = second_infinite_series.round is #{second_infinite_series.round(1) == 1/2.to_f}"

# task 4.5.3 ((4 * n - 1)! * (n + 1)!) / ((3 * n)! * (3 ^ (2 * n)) * (2 * n)!)
def third_infinite_series
  def infinite_series(n)
    (factorial(4 * n - 1) * factorial(n + 1)) / (factorial(3 * n) * (3 ** (2 * n)) * factorial(2 * n))
  end

  def step(n)
    n + 1
  end

  common_function(:infinite_series, 1, :step)
end

puts third_infinite_series
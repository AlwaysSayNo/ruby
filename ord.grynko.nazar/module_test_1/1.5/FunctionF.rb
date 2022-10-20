class FunctionF

  def initialize(a, b, c)
    @a, @b, @c = a.to_f, b.to_f, c.to_f
    @isReal = calculate_real(a, b, c)
  end

  def calculate(x_0, x_n, d_x)
    x_curr = x_0
    i = 0
    func_name = ''
    while x_curr <= x_n
      res = if x_curr < 0 && @b != 0
              func_name = :first.to_s
              first(x_curr)
            elsif x_curr > 0 && @b == 0
              func_name = :second.to_s
              second(x_curr)
            else
              func_name = :third.to_s
              third(x_curr)
            end

      print_res(func_name, i, x_curr, res)

      i += 1
      x_curr = (x_curr + d_x).round(2)
    end
  end

  private

  def calculate_real(a, b, c)
    ((a.to_int | b.to_int) & c.to_int) != 0
  end

  def first(x)
    @a - (x / (10 + @b))
  end

  def second(x)
    (x - @a) / (x / @c)
  end

  def third(x)
    3 * x + 2 / @c
  end

  def print_res(func_name, iter, x, result)
    res = @isReal ? result : result.to_int

    puts "#{iter}. #{func_name}(#{x}) = #{res}"
  end

end

# def get_args
#   puts "Enter a: "
#   a = gets.chomp.to_f
#
#   puts "Enter b: "
#   b = gets.chomp.to_f
#
#   puts "Enter c: "
#   c = gets.chomp.to_f
#
#   [a, b, c]
# end
#
# def get_vars
#   puts "Enter x_0: "
#   x_0 = gets.chomp.to_f
#
#   puts "Enter x_n: "
#   x_n = gets.chomp.to_f
#
#   puts "Enter d_x: "
#   d_x = gets.chomp.to_f
#
#   [x_0, x_n, d_x]
# end

# (a | b) & c == 0
# a, b, c = 0, 0, 2
# x_0, x_n, d_x = 0, 2, 0.2


# (a | b) & c == 0
# (first)
# a, b, c = 2, 1, 2
# x_0, x_n, d_x = -2, -1, 0.2

# (a | b) & c == 0
# (second)
# a, b, c = 2, 0, 2
# x_0, x_n, d_x = 1, 2, 0.2

# (a | b) & c == 0
# (third)
# a, b, c = 2, 1, 2
# x_0, x_n, d_x = 0, 3, 0.2

# (a | b) & c != 0
# (first, third)
# a, b, c = 2, 1, 2
# x_0, x_n, d_x = -1, 2, 0.2


# (a | b) & c != 0
# (second, third)
a, b, c = 2, 0, 2
x_0, x_n, d_x = -1, 3, 0.2

# a, b, c = get_args
# x_0, x_n, d_x = get_vars

function = FunctionF.new(a, b, c)
function.calculate(x_0, x_n, d_x)
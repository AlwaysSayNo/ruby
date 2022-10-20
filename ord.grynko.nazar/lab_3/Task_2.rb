x = 15 # gets.chomp.to_i

FIRST_EXPRESSION = ((x - 2).abs / (x**2 * Math.cos(x))) ** 1/7
SECOND_EXPRESSION = ((Math.tan(x + Math::E**x)) / Math.sin(x)**2) ** -7/2
THIRD_EXPRESSION = (1 + x / (1 + x / (1 + x)))

# task 2.5.1

y = if -4 < x && x <= 0
        FIRST_EXPRESSION
    elsif 0 < x && x <= 12
        SECOND_EXPRESSION
    elsif x < -4 || x > 12
        THIRD_EXPRESSION
    end
print y, "\n"
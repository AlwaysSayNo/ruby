def letter?(lookAhead)
  lookAhead.match?(/[[:alpha:]]/)
end

def to_digit(letter)
  letter.upcase.ord - 55
end

def to_decimal_system(number_s, from_system)
  number_chars = number_s.chars
  comma_pos = number_chars.index(",")

  degree = number_chars.size - 1
  degree -= degree - comma_pos + 1 if comma_pos != nil

  result = 0
  (0...number_chars.size).each do |i|
    char = number_chars[i]

    if char != ","
      char = to_digit char if letter? char

      result += char.to_f * from_system ** degree
      degree -= 1
    end
  end

  result
end

puts to_decimal_system("1111100011101", 2)
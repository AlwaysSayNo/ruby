require 'bigdecimal'

def to_letter(digit)
  (digit + 55).chr
end

def from_decimal_to(number_s, to_system)
  number_parts = number_s.split(",")

  if !number_s.include?(",")
    number_parts.append "0"
  elsif number_s.index(",") == 0
    number_parts.prepend "0"
  else
    number_parts[1] = "0." + number_parts[1]
  end

  result = ""

  result += for_integer_part(number_parts[0].to_i, to_system)
  result += ","
  result += for_fractional_part(number_parts[1].to_f, to_system)

  result
end

def for_integer_part(number, to_system)
  result = ""

  while number != 0 do
    tmp = number % to_system
    tmp = to_letter(tmp.to_i) if tmp >= 10

    number /= to_system

    result += tmp.to_s
  end

  result = "0" if result.size == 0

  result.reverse
end

def for_fractional_part(number, to_system)
  result = ""

  while number != 0.0 do
    number *= to_system

    tmp = number.to_i % to_system
    number = number - tmp
    tmp = to_letter(tmp.to_i) if tmp >= 10

    result += tmp.to_s
  end

  result = "0" if result.size == 0

  result
end

#puts for_integer_part(52, 2)
#puts for_integer_part(58_506, 16)
#puts for_fractional_part(0.8435, 16)
puts from_decimal_to("222", 2)
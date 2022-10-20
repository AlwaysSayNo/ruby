class Point

  def initialize(x, y)
    @x, @y = x, y
  end

  attr_reader :x, :y
end

def read_points(number_of_points)
  arr = []
  (0...number_of_points).each { |i|
    puts "#{i + 1}. Enter x:"
    x = gets.chomp.to_i

    puts "#{i + 1}. Enter y:"
    y = gets.chomp.to_i

    curr_point = Point.new(x, y)
    arr.append(curr_point)
  }

  arr
end

def evaluate_square(arr)
  result = 0
  (0..(arr.size - 1)).each { |i|
    first = arr[i]
    second = arr[i - 1]

    result += 0.5 * (first.x + second.x) * (first.y - second.y)
  }

  result = result.abs
end

puts "Enter number of points:"
number_of_points = gets.chomp.to_i

arr = read_points(number_of_points)
square = evaluate_square(arr)

puts "Result square: #{square}"

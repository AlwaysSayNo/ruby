def is_valid(num)
  Integer(num) rescue false
end

def create_matrix(width, height)
  matrix = Array.new(width) { Array.new(height) }
  (0...width).each do |i|
    (0...height).each do |j|
      while true
        print "Input [#{i}][#{j}]: "
        input = gets.chomp
        if is_valid(input)
          matrix[i][j] = input.to_i
          break
        end
      end
    end
  end
  matrix
end

def create_values(dimension)
  values_matrix = create_matrix(dimension, 1)
  values = []
  (0...dimension).each do |i|
    values.push(values_matrix[i][0])
  end
  values
end

def gauss(matrix, values)
  def add_rows(row_to_add, row, coef, values, row_to_add_index, row_index)
    (0...row_to_add.length).each do |i|
      row_to_add[i] += coef * row[i]
    end
    values[row_to_add_index] += coef * values[row_index]
  end

  n = matrix.length
  (0...n).each do |row|
    x = matrix[row][row].to_r
    (0...n).each do |column|
      matrix[row][column] /= x
    end
    values[row] /= x

    (0...n).each do |zero_row|
      unless zero_row == row
        zero_coef = matrix[zero_row][row]
        add_rows(matrix[zero_row], matrix[row], -zero_coef, values, zero_row, row)
      end
    end
  end
  values
end

print "Input matrix dimension (3 <= n <= 9):"
dimension = gets.chomp.to_i

print "Input matrix:\n"
matrix = create_matrix(dimension, dimension)

print "Input values:\n"
values = create_values(dimension)

result = gauss(matrix, values)
puts "Result: #{result}"
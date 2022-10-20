def build_matrix(n, m)
  result = Array.new n
  (0...n).each do |i|
    column = Array.new m

    (0...m).each do |j|
      elem = if i == j then 1 else rand 10 end
      column[j] = elem
    end

      result[i] = column
    end

  result
end

def trace(matrix)
  if matrix.size != matrix[0].size
    throw ArgumentError
  end

  trace = 0
  size = matrix.size

  (0...size).each do |i|
    trace += matrix[i][i]
  end

  trace
end

n = 8
m = 8

matrix_arr = build_matrix(n, m)
puts "Matrix:", matrix_arr.map(&:inspect), "\n"
puts "Trace: #{trace matrix_arr}"

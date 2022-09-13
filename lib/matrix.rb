module Matrix

  class << self
    def rotate(matrix)
      rotated = matrix.clone

      transpose(rotated)
      reflect(rotated)

      rotated
    end

    private

    def transpose(matrix)
      n = matrix.length
      n.times do |i|
        (i + 1).upto(n - 1) do |j|
          temp = matrix[i][j]
          matrix[i][j] = matrix[j][i]
          matrix[j][i] = temp
        end
      end
    end

    def reflect(matrix)
      n = matrix.length
      n.times do |i|
        (n / 2).times do |j|
          temp = matrix[i][j]
          matrix[i][j] = matrix[i][-j - 1]
          matrix[i][-j - 1] = temp
        end
      end
    end
  end
end
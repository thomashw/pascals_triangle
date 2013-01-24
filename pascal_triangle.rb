class PascalTriangle

  # Public: Creates the Pascal's Triangle up to and including row 'n'
  #
  # row - the last row to be created in the Pascal's triangle (0-based)
  def create(row)
    @triangle = Array.new(row.to_i)

    for i in 0..row.to_i
      @triangle[i] = Array.new(i+1, 1)

      if i < 2
        next
      end

      for j in 0..i
        if i > 0 && j > 0
          left = @triangle[i-1][j-1]
        else
          left = 0
        end

        if i > 0 && j < @triangle[i-1].length
          right = @triangle[i-1][j]
        else
          right = 0
        end

        @triangle[i][j] = left + right
      end
    end
  end

  # Public: Prints the 'row' of the Pascal's triangle (0-based)
  #
  # row - the row to be printed (0-based)
  def print_row(row)
    if @triangle
      if row.to_i < @triangle.length
        new_row = @triangle[row.to_i]
        print new_row
        print "\n"
      end
    else
      puts "The triangle must be created first. Use the `create` method."
    end
  end
end
# This class creates a Pascals triangle given the length of rows
# and then returns the contents in a string
class PascalsTriangle
  attr_reader :triangle_array

  def initialize
    @triangle_array = [[1]]
  end

  def make_triangle(num_of_rows)
    len = @triangle_array.length
    while len < num_of_rows
      last_row = @triangle_array[len - 1]
      @triangle_array.push(make_next_row(last_row))
      len = @triangle_array.length
    end
    @triangle_array
  end

  def make_next_row(last_array)
    len = last_array.length
    counter = 1
    new_array = [1]
    while counter < len
      sum = last_array[counter - 1] + last_array[counter]
      new_array.push(sum)
      counter += 1
    end
    new_array.push(1) if counter == len
    new_array
  end

  def unpack_triangle
    unpacked_string = ''
    unpacked_string += unpack_row(@triangle_array.shift) until
      @triangle_array.empty?
    unpacked_string
  end

  def unpack_row(row_array)
    return_string = ''
    return_string += row_array.shift.to_s until row_array.empty?
    return_string
  end
end

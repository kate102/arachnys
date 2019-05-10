require './src/pascals_triangle'

describe PascalsTriangle do
  context 'Building the triangle' do
    # Basic Cases
    it 'returns [1] when n = 1' do
      pascals_triangle = PascalsTriangle.new
      n = 1
      expect(pascals_triangle.make_triangle(n)).to eq([[1]])
    end

    it 'returns [[1], [1, 1] when n = 2' do
      pascals_triangle = PascalsTriangle.new
      n = 2
      expect(pascals_triangle.make_triangle(n)).to eq([[1], [1, 1]])
    end

    # More Complex Case
    it 'returns [[[1], [1, 1], [1, 2, 1], [1, 3, 3, 1], [1, 4, 6, 4, 1]] when n = 5' do
      pascals_triangle = PascalsTriangle.new
      n = 5
      expect(pascals_triangle.make_triangle(n)).to eq([[1], [1, 1], [1, 2, 1], [1, 3, 3, 1], [1, 4, 6, 4, 1]])
    end
  end

  context 'Unit Testing' do
    # Basic Case
    it 'returns [1, 2, 1] given [1, 1]' do
      pascals_triangle = PascalsTriangle.new
      n = [1, 1]
      expect(pascals_triangle.make_next_row(n)).to eq([1, 2, 1])
    end

    # More Complex Case
    it 'returns [1, 4, 6, 4, 1] given [1, 3, 3, 1]' do
      pascals_triangle = PascalsTriangle.new
      n = [1, 3, 3, 1]
      expect(pascals_triangle.make_next_row(n)).to eq([1, 4, 6, 4, 1])
    end
  end

  context 'Displaying the contents of the triangle' do
    # Basic Case
    it 'returns "1" when n is 1' do
      pascals_triangle = PascalsTriangle.new
      n = 1
      pascals_triangle.make_triangle(n)
      expect(pascals_triangle.unpack_triangle).to eq('1')
    end

    it 'returns "111" when n is 2' do
      pascals_triangle = PascalsTriangle.new
      n = 2
      pascals_triangle.make_triangle(n)
      expect(pascals_triangle.unpack_triangle).to eq('111')
    end

    # More Complex Case
    it 'returns "111121133114641" when n is 5' do
      pascals_triangle = PascalsTriangle.new
      n = 5
      pascals_triangle.make_triangle(n)
      expect(pascals_triangle.unpack_triangle).to eq('111121133114641')
    end
  end
end

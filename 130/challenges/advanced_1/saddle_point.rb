# saddle_point.rb

class Matrix
  def initialize(matrix_representation)
    @matrix = create_matrix(matrix_representation)
  end

  def rows
    @matrix
  end

  def columns
    column_total = @matrix[0].length
    all_columns = []
    column_total.times do |i|
      current_column = []
      @matrix.each do |row|
        current_column << row[i]
      end
      all_columns << current_column
    end
    all_columns
  end

  private

  def create_matrix(matrix_representation)
    matrix_representation.split("\n").map do |row_representation|
      row_representation.split.map(&:to_i)
    end
  end
end

class SumSquareDifference

  def difference
    square_of_sum - sum_of_squares
  end

  private

    def list_of_numbers
      (1..100).to_a
    end

    def sum_of_squares
      list_of_numbers.map { |n| n * n }
                     .reduce(:+)
    end

    def square_of_sum
      sum = list_of_numbers.reduce(:+)
      square = sum * sum
    end

end

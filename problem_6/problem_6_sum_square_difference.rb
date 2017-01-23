class SumSquareDifference

  def list_of_numbers
    (1..100).to_a
  end

  def sum_of_squares
    squares = list_of_numbers.map { |n| n * n }
    
  end

end

class SumFibonacci

  def sum_even_numbers
    self.send(:even_numbers_only).reduce(:+)
  end

  private

    def create_sequence
      sequence = [1, 2]

      while (sequence[-1] + sequence[-2]) < 4000000
        calculate_next_term(sequence)
      end

      sequence
    end

    def calculate_next_term(sequence)
      sequence << (sequence[-1] + sequence[-2])
    end

    def even_numbers_only
      self.send(:create_sequence).keep_if { |n| n % 2 == 0 }
    end

end

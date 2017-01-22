# If we list all the natural numbers below 10 that are multiples of 3 or 5,
# we get 3, 5, 6 and 9. The sum of these multiples is 23.
#
# Find the sum of all the multiples of 3 or 5 below 1000.

class SumMultiples

  def initialize(number)
    @number = number
  end

  def calculate_sum_of_multiples
    return "Must enter a number" if @number.class != Fixnum
    return "Number must be greater than zero" if @number <= 0

    result = 0
    number = @number - 1

    while number > 0
      if divisible_by_3?(number) || divisible_by_5?(number)
        result += number
      end
      number -= 1
    end

    puts result
  end

  def divisible_by_3?(number)
    number % 3 == 0
  end

  def divisible_by_5?(number)
    number % 5 == 0
  end

end

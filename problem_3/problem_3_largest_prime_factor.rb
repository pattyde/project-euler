class PrimeFactor

  def largest_prime_factor
    prime_factors = []

    factors.each do |factor|
      if is_prime?(factor)
        prime_factors << factor
      end
    end

    prime_factors.sort.last
  end

  def factors
    number = 600851475143
    factors = []

    (1..(Math.sqrt(number).round)).each do |n|
      if number % n == 0
        factors << n && factors << number / n
      end
    end

    factors
  end

  def is_prime?(integer)
    return false if integer <= 1

    (Math.sqrt(integer).round).downto(2).each do |n|
      return false if integer % n == 0
    end
    true
  end

end

def is_prime?(number)
  (2..number-1).each do |divisor|
    return false if number % divisor == 0
  end
  true
end

# def primes_up_to(number)
#   Array(2..number).select { |n| is_prime?(n) }
# end

# def prime_factors(number)
#   primes_up_to(number).select { |prime| number % prime == 0 }
# end

# p primes_up_to(10)
# p prime_factors(10)
# p prime_factors(25324)

### Recursive Version

def prime_factors_r(number, prime_factors = [])
  if is_prime?(number)
    prime_factors << number if !prime_factors.include?(number)
    return prime_factors
  end
  2.upto(number/2 + 1).each do |potential_factor|
    if number % potential_factor == 0
      prime_factors_r(potential_factor, prime_factors)
    end
  end
  prime_factors
end

p prime_factors_r(25324)

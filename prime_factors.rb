require 'prime'

def prime_factors(num, factors = [])
  return factors.push(num) if num.prime?
  Prime.each(num) do |single_prime|
    if num % single_prime == 0
      num = num / single_prime
      factors.push(single_prime)
      break
    end
  end
  prime_factors(num, factors)
end



p prime_factors(3)         # => [3]
p prime_factors(6)         # => [2,3]
p prime_factors(8)         # => [2,2,2]
p prime_factors(25)        # => [5,5]
p prime_factors(123123123) # => [3, 3, 41, 333667]
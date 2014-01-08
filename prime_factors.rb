require 'prime'
def prime_factors(n)
  prime_factors = []
  add_smallest_prime_factor_to_array(n, prime_factors)
  return prime_factors
end

def add_smallest_prime_factor_to_array(num, prime_factors)
  return nil if num == 1
  small_factor = find_smallest_factor(num)
  prime_factors << small_factor
  add_smallest_prime_factor_to_array(num/small_factor, prime_factors)
end

def find_smallest_factor(n)
  Prime.each do |prime|
    return prime if n%prime == 0
  end
end

p prime_factors(3)         # => [3]
p prime_factors(6)         # => [2,3]
p prime_factors(8)         # => [2,2,2]
p prime_factors(25)        # => [5,5]
p prime_factors(123123123) # => [3, 3, 41, 333667]


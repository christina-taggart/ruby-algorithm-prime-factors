require 'prime'

# Wrapper method for prime_factors_recursive:
def prime_factors(n)
 prime_factors = []
 primes = []
 Prime.each(n) { |prime| primes << prime }
 prime_factors_recursive(n, primes, prime_factors)
end

def prime_factors_recursive(n, primes, prime_factors)
  prime_factors << n if Prime.prime?(n)

end

#-----DRIVERS-----
p prime_factors(3) == [3]
p prime_factors(6) == [2,3]
p prime_factors(8) == [2,2,2]
p prime_factors(25) == [5,5]
p prime_factors(123123123) == [3, 3, 41, 333667]
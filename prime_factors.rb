require 'prime'

# Wrapper method for prime_factors_recursive:
def prime_factors(n)
 factors = []
 prime_factors_recursive(n, factors)
 factors
end

def prime_factors_recursive(n, factors)
  if Prime.prime?(n)
    factors << n
  else
    prime_factor = first_prime_factor(n)
    factors << prime_factor
    prime_factors_recursive(n / prime_factor, factors)
  end
end

# Helper method to find the first prime factor of n:
def first_prime_factor(n)
  Prime.each { |prime|
      return prime if n % prime == 0
    }
end

#-----DRIVERS-----
p prime_factors(3) #== [3]
p prime_factors(6) #== [2,3]
p prime_factors(8) #== [2,2,2]
p prime_factors(25) #== [5,5]
p prime_factors(147) #== [3,7,7]
p prime_factors(123123123) # == [3, 3, 41, 333667]
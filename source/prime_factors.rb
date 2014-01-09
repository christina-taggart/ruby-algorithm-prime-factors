def is_prime?(number)
  for x in 2..(number - 1)
    return false if (number % x) == 0
    return true
  end
end

def prime_factors(n)
  prime_factors = []
	all_possible_factors = (2..n).to_a
  all_possible_prime_factors = all_possible_factors.select {|factor| is_prime?(factor)}
  all_possible_prime_factors.each do |prime|
    while n%prime == 0 && n>1
      prime_factors << prime
      n = (n/prime)
    end
  end
  prime_factors
end

# Tests
p prime_factors(2)         == [2]
p prime_factors(9)         == [3, 3]
p prime_factors(873)       == [3, 3, 97]
p prime_factors(3)         == [3]
p prime_factors(6)         == [2,3]
p prime_factors(8)         == [2,2,2]
p prime_factors(25)        == [5,5]
p prime_factors(123123123) == [3, 3, 41, 333667]

# Pseudocode
# find all potential factors of n
# of these, select only the primes 
# for each possible prime factor, check to see if n is divisble by that n
#  	if yes, add that prime to the result array and increment n (n = n/prime)
#  		keep checking if n is divisble by that number (until/while)
#  	if no, don't add prime to the result array
#  return result array


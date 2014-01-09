### psuedocode
#create factors array
#if number is prime, add to factors array
#if number is not prime
	# find smallest prime number it is divisble by and add to array
	#divide number by smallest prime number, get answer
	#repeat until prime
require 'prime'

def prime_factors(n)
	factors = []

	if Prime.prime?(n)
		factors << n
	else 
		prime = smallest_factor(n)
		factors << prime
		prime_factors(n % prime)

	end
	factors
end

def smallest_factor(n)
	Prime.each do |prime|
		return prime if n%prime == 0
	end
end


# smallest_factor(25)

# def smallest_prime(n)

# end



# p prime_factors(3) == [3]
# p prime_factors(6) == [2,3]
# p prime_factors(8) == [2,2,2]
# p prime_factors(25) == [5,5]
# p prime_factors(123123123)== [3, 3, 41, 333667]

prime_factors(3)         # => [3]
prime_factors(6)         # => [2,3]
prime_factors(8)         # => [2,2,2]
prime_factors(25)        # => [5,5]
prime_factors(123123123) # => [3, 3, 41, 333667]
require 'prime'

def prime_factors(n)
	find_prime_factors(n)
end

def find_prime_factors(n, factors=[])
	if Prime.prime?(n)
		factors << n
	else
		prime_factor = first_prime_factor(n)
		factors << prime_factor
		find_prime_factors(n/prime_factor, factors)
	end
end

def first_prime_factor(n)
	Prime.each {|prime| return prime if n % prime == 0}
end


p prime_factors(10)
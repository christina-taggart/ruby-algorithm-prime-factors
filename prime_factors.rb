def is_prime?(n)
	prime = true
	 if n == 2 || n == 3
	 	return true
	 end
	possible_divisors = ((n/2.floor)...n).to_a
	possible_divisors.each do |num|
		if n % num == 0
			prime = false
		end
		break if prime == false
	end
	prime
end

def prime_factors(n)
	possible_factors = (2..n).to_a
	poss_prime_factors = possible_factors.find_all {|n| is_prime?(n)}
	primes = []
	poss_prime_factors.each do |num|
		while n % num == 0 && n != 1
			n /= num
			primes << num
		end
		break if n == 1
	end
		primes
end

p prime_factors(100) == [2,2,5,5]
p prime_factors(1000) == [2,2,2,5,5,5]
p prime_factors(240) == [2,2,2,2,3,5]
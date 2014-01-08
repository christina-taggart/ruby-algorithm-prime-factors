def is_prime?(number)
  (2..number-1).each do |divisor|
    return false if number % divisor == 0
  end
end

def primes_up_to(number)
  Array(2..number).select {|n| is_prime?(n)}
end

def prime_factors(number)
  primes_up_to(number).select { |prime| number % prime == 0}
end

p primes_up_to(10)
p prime_factors(10)
p prime_factors(25324)

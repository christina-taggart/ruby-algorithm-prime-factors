def find_factors(n)
  factors = (2..n).to_a.select { |num| (n % num).zero? }
  first_factor = factors[0]
  second_factor = 0
  until (first_factor * second_factor) == n
    second_factor += 1
  end
  factors = [first_factor, second_factor]
end

def prime_factors(n)
  factors = find_factors(n)
  until is_prime?(factors.last)
    find_factors(factors.pop).each { |i| factors << i}
  end
  factors.pop if (factors.last == 1)
  factors
end

def is_prime?(n)
  prime = (2..Math.sqrt(n).to_i).to_a.select {|num| (n % num) == 0}
  prime.empty? ? true : false
end

# Finding Prime Factors
# Input given an interger, n
# Output all prime factors of n
# 1. Find all the factors of n
#   a. Given number, n, find the first factor
# 2. Return only those factors of n which are prime
#   b. asd;flkj it works now...!

# Note, the last test will take about 40 seconds to complete...
p prime_factors(3) == [3]
p prime_factors(6) == [2,3]
p prime_factors(8) == [2,2,2]
p prime_factors(25) == [5,5]
p prime_factors(123123123) == [3, 3, 41, 333667]
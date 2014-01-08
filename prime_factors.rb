require 'prime'
def prime_factors(num)
  prime_array = []
  if Prime.prime?(num)
    prime_array << num
  else
    prime_array = num.prime_division.flatten.sort
    prime_array.delete_if { |primes| primes == 1 }
  end
 end

 p prime_factors(12) == [2, 2, 3]
 p prime_factors(11) == [11]
 p prime_factors(8) == [2, 3]
 p prime_factors(12534572) == [2, 2, 3133643]
 p prime_factors(147) == [2, 3, 7]
 p prime_factors(1368) == [2, 2, 3, 3, 19]
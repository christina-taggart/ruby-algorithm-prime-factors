def primes(n)
  prime_numbers = []
  if n == 1
    return prime_numbers
  else
    2.upto(n) do |potential_prime|
      if n % potential_prime == 0
        prime_numbers << potential_prime
        return prime_numbers + primes(n/potential_prime)
      end
    end
  end
end

puts primes(64)



#Create an array from 2 to the number
#Create an empty array to store prime numbers
#If the number%2 =0, then add to empty array and  number = numer/2 and do it over again

# insert a number to the results array then add that to the results of calling primes(n/2)
# this occurs until the base case is reached

# what is the base case?
# when n == 1







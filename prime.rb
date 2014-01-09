def get_first_factor(n)
  (2..n).each {|num| return num if n % num == 0}
  return n
end

puts "\nTests for get_first_factor"
print get_first_factor(1) == 1 ? "." : "\nfailed on line " + __LINE__.to_s + "\n"
print get_first_factor(7) == 7 ? "." : "\nfailed on line " + __LINE__.to_s + "\n"
print get_first_factor(10) == 2 ? "." : "\nfailed on line " + __LINE__.to_s + "\n"
print get_first_factor(11) == 11 ? "." : "\nfailed on line " + __LINE__.to_s + "\n"
print get_first_factor(20) == 2 ? "." : "\nfailed on line " + __LINE__.to_s + "\n"
print get_first_factor(33) == 3 ? "." : "\nfailed on line " + __LINE__.to_s + "\n"


def prime_factors(n)
  first_factor = get_first_factor(n)

  # return n if there were no factors
  return [n] if first_factor == n

  # for cases where the only 2 factors are a prime multiplied against itself, return
  # the pair of those numbers (eg, 49)
  return [first_factor, first_factor] if first_factor == Math.sqrt(n)

  # at thist point the first factor, will always be a prime, so return
  # an array of the first factor and the result of calling prime_factors on the
  # right side of the tree (eg, if the first factor of 100 is 2, then call
  # prime_factors on 50)
  return ([first_factor] << prime_factors(n / first_factor)).flatten
end

puts "\nTests for prime_factors"
print prime_factors(3) == [3] ? "." : "\nfailed on line " + __LINE__.to_s + "\n"
print prime_factors(49) == [7, 7] ? "." : "\nfailed on line " + __LINE__.to_s + "\n"
print prime_factors(4) == [2,2] ? "." : "\nfailed on line " + __LINE__.to_s + "\n"
print prime_factors(6) == [2,3] ? "." : "\nfailed on line " + __LINE__.to_s + "\n"
print prime_factors(8) == [2,2,2] ? "." : "\nfailed on line " + __LINE__.to_s + "\n"
print prime_factors(123123123) == [3, 3, 41, 333667] ? "." : "\nfailed on line " + __LINE__.to_s + "\n"

puts "\n"
require 'prime'

def prime_factors(number)
  answers = []
  prime_factors_work(number, answers)
  p answers
end


def prime_factors_work(number, array)
  if Prime.prime?(number)
     array << number
  else
    possible_factors = (2..(number/2)).to_a
    a = possible_factors.detect {|x| number % x == 0}
    array << a
    number = number / a
    prime_factors_work(number, array)
    end
end

p prime_factors(17) == [17]
p prime_factors(6) == [2,3]
p prime_factors(8) == [2,2,2]
p prime_factors(25) == [5,5]
p prime_factors(123123123) == [3, 3, 41, 333667]
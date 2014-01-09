require 'prime'

def prime_factors(number)
  answers = []
  prime_factors_work(number, answers)
 p answers
end


def prime_factors_work(number, array)
  if Prime.prime?(number)
    p "this is prime? #{number}"
     array << number

  else
    possible_factors = 2..(number/2 +1)
    p "these are the possible factors: #{possible_factors}"
    possible_factors.each do |x|
    if number % x == 0
    p " x = #{x}"
      prime_factors_work(x, array)
    end
    end
  end
end




# p prime_factors(17)         == [17]
# p prime_factors(6)         == [2,3]
p prime_factors(32)         == [2,2,2,2,2]
# p prime_factors(625)        == [5,5]
# p prime_factors(123123123) == [3, 3, 41, 333667]
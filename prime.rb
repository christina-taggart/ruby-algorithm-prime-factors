require 'prime'
# def prime_factors(num)
  # ary = Prime.take_while { |p| p <= num }
  # out_ary = []
  # finish_ary = []
  # if ary.include?(num)
    # return num
  # else
    # ary.each do |prime|
      # if num % prime == 0
        # out_ary << prime
      # end
    # end
    # finish_ary << out_ary.last
    # prime_factors(out_ary.last)
#
    # p finish_ary
  # end
# end
#
# prime_factors(877)

def prime_factors(num, out_ary=[])
  # binding.pry
  ary = Prime.take_while { |p| p <= num }
  # out_ary = []
  ary.each do |prime|
    if prime == num
      out_ary << prime
      return out_ary
    elsif num % prime == 0
      out_ary << prime
      return prime_factors(num/prime, out_ary)
    end
  end
end

p prime_factors(12)
p prime_factors(123456)
p prime_factors(25) == [5,5]
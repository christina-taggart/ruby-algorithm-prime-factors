require 'prime'

def prime_factors(num)
  ary = Prime.take_while { |p| p < num }
  out_ary = []
  ary.each do |prime|
    if num % prime == 0
      out_ary << prime
    end
  end
  out_ary
end

p prime_factors(279)
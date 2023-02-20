# frozen_string_literal: true

# BEGIN

# END
def fizz_buzz(start, stop)
  result = []
  if stop < start
    result = nil
  else
    start.upto stop do |i|
      result << if i % 15 == 0
                  'FizzBuzz'
                elsif i % 3 == 0
                  'Fizz'
                elsif i % 5 == 0
                  'Buzz'
                else
                  "#{i}"
                end
    end
    result.join(' ')
  end
end

fizz_buzz(1, 0)
fizz_buzz(7, 7)
fizz_buzz(1, 5)
# => '1 2 Fizz 4 Buzz'
fizz_buzz(11, 20)
# => '11 Fizz 13 14 FizzBuzz 16 17 Fizz 19 Buz

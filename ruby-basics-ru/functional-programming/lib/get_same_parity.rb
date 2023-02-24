# frozen_string_literal: true

# BEGIN

# END

def get_same_parity(numbers)
  if numbers.empty?
    numbers
  else
    first_number_parity = numbers.first % 2
    numbers.select {|number| number % 2 == first_number_parity }
  end
end

get_same_parity [1, 2, 3, 4, 5, 6] # [1, 3, 5]
get_same_parity [3, 27, 31, 22, 1] # [3, 27, 31, 1]
get_same_parity [2, 3, 3, 10, 4, 4, 28] # [2, 10, 4, 4, 28]
get_same_parity []

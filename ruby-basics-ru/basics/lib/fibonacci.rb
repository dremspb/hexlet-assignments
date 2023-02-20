# frozen_string_literal: true

# BEGIN

# END

def fibonacci(n)
  return nil if n.negative?
  return n if (0..1).include? n

  (fibonacci(n - 1) + fibonacci(n - 2))
end

fibonacci(-1) # nil
fibonacci(0) # 0
fibonacci(1) # 1
fibonacci(10) # 55

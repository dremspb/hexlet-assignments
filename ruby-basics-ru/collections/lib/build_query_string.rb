# frozen_string_literal: true

# BEGIN
def build_query_string(hash)
  result =
    hash.sort.map do |key, value|
      "#{key}=#{value}"
    end
  result.join('&')
end

# END
puts build_query_string({ per: 10, page: 1 })
# # => 'page=1&per=10'

puts build_query_string({ param: 'all', param1: true })
# # => 'param=all&param1=true'
# ```

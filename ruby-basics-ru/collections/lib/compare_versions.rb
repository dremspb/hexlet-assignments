# frozen_string_literal: true

# BEGIN
def compare_versions(version1, version2)
  v1 = version1.split(".").map {|number| number.to_i}
  v2 = version2.split(".").map {|number| number.to_i}
 
  if v1[0] < v2[0]
    -1
  elsif v1[0] > v2[0]
    1
  else
    1[0] == v2[0]
    if v1[1] < v2[1]
      -1
    elsif v1[1] > v2[1]
      1
    else
      v1[1] == v2[1]
      0
    end
  end
end
# END

puts compare_versions("0.1", "0.2")
# # => -1

puts compare_versions("0.2", "0.1")
# # => 1

puts compare_versions("4.2", "4.2")
# # => 0

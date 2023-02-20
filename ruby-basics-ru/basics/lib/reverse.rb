# frozen_string_literal: true

# BEGIN

# END
# Реализуйте функцию `reverse()`, которая принимает строку и переворачивает её задом наперёд. Задачу нужно решить без использования встроенных в язык методов.

# ```ruby
# reverse('Hexlet')
# # "telxeH"
# ```
def reverse(word)
  reverse_word = nil
  word.each_char do |letter|
    reverse_word = "#{letter}#{reverse_word}"
  end
  reverse_word
end

reverse('Hexlet')

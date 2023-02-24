# frozen_string_literal: true

# BEGIN

# END

def anagramm_filter(word, words_to_check)
  test_word = word.chars.sort
  words_to_check.select {|word_to_check| word_to_check.chars.sort == test_word}
end

anagramm_filter('abba', %w[aabb abcd bbaa dada]) # ['aabb', 'bbaa']
anagramm_filter('racer', %w[crazer carer racar caers racer]) # ['carer', 'racer']
anagramm_filter('laser', %w[lazing lazy lacer]) # []

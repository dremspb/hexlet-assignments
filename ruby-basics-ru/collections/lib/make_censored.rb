def make_censored(text, stop_words)
  text_array = text.split
  result = 
    text_array.map do |word|
      if stop_words.include?(word)
        '$#%!'
      else
        word
      end
    end
    result.join(" ")
end



sentence = "When you play the game of thrones, you win or you die"
puts make_censored(sentence, ["die", "play"])

sentence2 = "chicken chicken? chicken! chicken"
puts make_censored(sentence2, ["?", "chicken"])

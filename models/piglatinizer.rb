class PigLatinizer

  def initialize
  end

  def piglatinize(text)
    words = text.split
    piglatinized_phrase = ""
    words.each do |word|
      parts = word.split(/([aeiou].*)/)
      letters = word.split(//)
      if letters[0].downcase.match(/a|e|i|o|u/) != nil
          piglatinized_word = "#{word}way"
          piglatinized_phrase << "#{piglatinized_word} "
      else
        first_part = parts.shift
        word_array = parts << first_part << "ay"
        piglatinized_word = word_array.join("")
        piglatinized_phrase << "#{piglatinized_word} "
      end
    end
    piglatinized_phrase.strip
  end
end
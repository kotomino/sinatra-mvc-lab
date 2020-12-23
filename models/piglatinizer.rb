# class PigLatinizer
#     attr_accessor :text

#     def initialize(text)
#         @text = text.downcase
#     end

#     def piglatinize 
#         array = text.split(" ")
#         piglatinized_array = array.collect {|word| piglatinize_word(word)}
#         piglatinized_array.join(" ")
#     end

#     def piglatinize_word(word)
#         first_letter = word[0]
#         if vowel?(first_letter)
#             "#{word}way"
#         else
#             consonants = []
#             consonants << word[0]

#             if vowel?(word[1]) == false
#                 consonants << word[1]
#                 if vowel?(word[2]) == false
#                     consonants << word[2]
#                 end
#             end
#             "#{word[consonants.length..-1] + consonants.join}ay"
#         end
#     end

#     def vowel?(alphabet)
#         ["a", "e", "i", "o", "u"].include?(alphabet)
#     end


# end

class PigLatinizer

    def piglatinize(input_str)
      input_str.split(" ").map{ |word| piglatinize_word(word)}.join(" ")
    end
  
    private
  
    def vowel?(char)
      char.match(/[aAeEiIoOuU]/)
    end
  
    def piglatinize_word(word)
      # word starts with vowel
      if vowel?(word[0])
        word + "way"
      else
      # word starts with one or more consonants
        vowel_index = word.index(/[aAeEiIoOuU]/)
        consonants = word.slice(0..vowel_index-1)
        word_leftover = word.slice(vowel_index..word.length)
        word_leftover + consonants + "ay"
      end
    end
  
  end
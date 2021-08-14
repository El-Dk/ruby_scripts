require "pry-byebug"
def caesar_cipher(text, shift_factor)
  for i in 0...text.length
    char_ascii = text[i].ord
    if char_ascii.between?(97, 122)
      char_ascii += shift_factor
      if char_ascii > 122
        until char_ascii <= 122
          char_ascii -= 26
        end 
      elsif char_ascii < 97
        until char_ascii >= 97
          char_ascii += 26
        end 
      end
    elsif char_ascii.between?(65, 90)
      char_ascii += shift_factor
      
      if char_ascii > 90
        until char_ascii <= 90
          char_ascii -= 26
        end 
      elsif char_ascii < 65
        until char_ascii >= 65
          char_ascii += 26
        end 
      end
    end
    text[i] = char_ascii.chr
  end
  text
end

puts caesar_cipher("Hola MundozZ!", -5)
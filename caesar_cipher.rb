# frozen_string_literal: false

def caesar_cipher(text, shift_factor)
  shift_factor %= 26
  (0...text.length).each do |i|
    next unless text[i].match?(/[a-zA-Z]/)

    char_ascii = text[i].ord
    char_ascii += shift_factor
    char_ascii -= 26 unless char_ascii.between?(97, 122) ||
                            char_ascii.between?(65, 90)
    text[i] = char_ascii.chr
  end
  text
end

puts caesar_cipher('What a string!', 5)
puts caesar_cipher('What a string!', 31)
puts caesar_cipher('What a string!', 57)
puts caesar_cipher('What a string!', -21)
puts caesar_cipher('What a string!', 6)

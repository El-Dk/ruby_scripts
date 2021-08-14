def substrings(text, dictionary)
  words = text.downcase.split(" ")
  substring_hash = Hash.new(0)
  words.each do |word|
    dictionary.each do |elem|
      substring_hash[elem] += 1 if word.include?(elem.downcase)
    end
  end
  substring_hash
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
#puts substrings("below", dictionary)

puts substrings("Howdy partner, sit down! How's it going?", dictionary)
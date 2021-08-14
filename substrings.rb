def substrings(word, dictionary)
  substring_hash = Hash.new(0)
  dictionary.each do |elem|
    substring_hash[elem] += 1 if word.include?(elem)
  end
  substring_hash
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("below", dictionary)
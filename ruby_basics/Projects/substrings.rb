# Implement a method #substrings that takes a word as the first argument and then an array of valid 
# substrings (your dictionary) as the second argument. It should return a hash listing each substring 
# (case insensitive) that was found in the original string and how many times it was found.

def substrings(word, array)
  substring = array.reduce(Hash.new(0)) do |result, item|
    result[item] += 1 if word.downcase[item]
    result
  end
  p substring
end

dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

substrings("below", dictionary)
# {"below"=>1, "low"=>1}
substrings("Howdy partner, sit down! How's it going?", dictionary)
# {"down"=>1, "go"=>1, "going"=>1, "how"=>1, "howdy"=>1, "it"=>1, "i"=>1, "own"=>1, "part"=>1, "partner"=>1, "sit"=>1}
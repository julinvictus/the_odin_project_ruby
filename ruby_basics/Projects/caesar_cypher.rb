# Implement a caesar cipher that takes in a string and 
# the shift factor and then outputs the modified string:

def caesar_cipher(string, factor)
  p string.each_char.map {|char| (char.ord + factor).chr}.join
end

caesar_cipher("hello", 3)
caesar_cipher("HELLO", 3)
caesar_cipher("HeLlO", 3)

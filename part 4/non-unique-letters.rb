=begin
0. Downcase letter - doesn't matter if it's at beginning or after 1
1. iterate over each letter in the word
2. for each letter
  a. if we've seen this letter before
    i.
  b. if we haven't seen this letter before
    i. pull letter out of word
    ii. iterate over remaining letters
    iii. copare wach remaining letter with current letter
    iv. if they match, store it
=end

# def repeated_characters(word)
#   word.downcase
#
#   word.each_char do |letter|
#     new_string = word.delete(letter)
#   end
# end

#alternative soluton
# create hash to store the letter frequency
# iterate over letters in the word
# for each letter, retrieve it from the hash
#   if letter is found, add one to count
  # if letter isn't found, set letter as key and value to 1
# pull out keys whose value is > 1
# turn intro string
# return it

def nonunique_chars(word)
  frequency = {}
  word.each_char do |letter|
    if frequency[letter] #letter is already stored,
      frequency[letter] = frequency[letter] + 1
    else
      frequency[letter] = 1
    end
  end

  dupes = frequency.select do |key, value|
    value > 1
  end

  dupes.keys.join

  puts dupes.inspect

end

nonunique_chars('assignment')
nonunique_chars('i saw a movie this week')

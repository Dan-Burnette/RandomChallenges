#Word Counting
#http://www.reddit.com/r/dailyprogrammer/comments/2nynip/2014121_challenge_191_easy_word_counting/

words_to_counts = {}
IO.readlines('challenge190input.txt').each do |line|
  line.gsub!(/\W+/, ' ')
  words = line.split()
  words.each {|w| words_to_counts.include?(w) ? words_to_counts[w]+=1 : words_to_counts[w]=1}
end
puts words_to_counts
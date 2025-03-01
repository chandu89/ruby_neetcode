# https://leetcode.com/problems/group-anagrams/

def group_anagrams(strs)
  result = Hash.new { |h, k| h[k] = [] }

  strs.each do |str|
    char_arr = Array.new(26, 0)
    str.each_char do |c|
      char_arr[c.ord - 'a'.ord] +=1
    end
    result[char_arr] << str
  end

  result.values
end

strs = ["eat","tea","tan","ate","nat","bat"]

puts "#{group_anagrams(strs)}"

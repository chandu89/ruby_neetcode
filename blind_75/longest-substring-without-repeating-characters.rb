# https://leetcode.com/problems/longest-substring-without-repeating-characters/description/

def length_of_longest_substring(s)
  len = s.length 
  left, right = 0, 0
  res = []
  max_length = 0
  while right < len
    while res.include? s[right]
      res.delete(s[left])
      left +=1
    end
    res.push(s[right])
    max_length = [max_length, (right - left + 1)].max
    right +=1
  end
  max_length
end

s = "abcabcbb"

puts "#{length_of_longest_substring(s)}"
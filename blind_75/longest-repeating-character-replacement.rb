# https://leetcode.com/problems/longest-repeating-character-replacement/description/

def character_replacement(s, k)
  len = s.length
  left, right = 0, 0
  char_count = Hash.new(0)
  max_repeating_char, res = 0, 0
  while right < len && left < len 
    str = s[right]
    char_count[str] +=1
    max_repeating_char = [max_repeating_char, char_count[str]].max 
    while ((right - left + 1) -  max_repeating_char) > k
      char_count[s[left]] -=1
      left +=1
    end

    res = [res, (right - left + 1)].max 
    right +=1
  end
  res
end

s = "ABAB" 
k = 2
puts "#{character_replacement(s, k)}" # 4
s = "AABABBA" 
k = 1
puts "#{character_replacement(s, k)}" # 4
# https://leetcode.com/problems/valid-anagram/description/

def is_anagram(str1, str2)
  return false if str1.length != str2.length 

  char_count1 = Array.new(26, 0)
  char_count2 = Array.new(26, 0)

  for i in 0...(str1.length)
    char_count1[str1[i].ord - 'a'.ord] +=1
    char_count2[str2[i].ord - 'a'.ord] +=1
  end
  char_count1 == char_count2
end

str1 = "anagram" 
str2 = "nagaram"
puts is_anagram(str1, str2)

str1 = "rat" 
str2 = "car"
puts is_anagram(str1, str2)
# https://leetcode.com/problems/valid-palindrome/description/

def is_palindrome(s)
  left = 0
  right = s.length - 1
  while left < right
    left += 1 while left < right && !is_alpha_numeric?(s[left])
    right -= 1 while right > left && !is_alpha_numeric?(s[right])

    return false if s[left].downcase != s[right].downcase
    left +=1
    right -=1
  end
  true
end

def is_alpha_numeric?(char)
  (char.ord >= 'a'.ord && char.ord <= 'z'.ord) ||
  (char.ord >= 'A'.ord && char.ord <= 'z'.ord) ||
  (char.ord >= '0'.ord && char.ord <= '9'.ord)
end

s = "A man, a plan, a canal: Panama"
puts is_palindrome(s)
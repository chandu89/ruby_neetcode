def is_valid(s)
  len = s.length
  return false if len == 0

  matcher = {
    '(' => ')',
    '{' => '}',
    '[' => ']'
  }

  stack = []
  counter = 0
  while counter < len
    char = s[counter]
    if !matcher[char].nil?
      stack.push(matcher[char])
    else
      return false if stack.pop != char
    end
    counter +=1
  end
  stack.empty?
end


s = "()"
puts "#{is_valid(s)}"
s = "()[]{}"
puts "#{is_valid(s)}"
s = "([])"
puts "#{is_valid(s)}"
s = "(]"
puts "#{is_valid(s)}"
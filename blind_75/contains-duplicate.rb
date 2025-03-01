# https://leetcode.com/problems/contains-duplicate/
def contains_duplicate(nums)
  seen = {}
  nums.each do |num|
    return true unless seen[num].nil?
    seen[num] = true
  end
  false
end

nums = [1,2,3,1]
puts contains_duplicate(nums)
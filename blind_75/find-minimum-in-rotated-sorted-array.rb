# https://leetcode.com/problems/find-minimum-in-rotated-sorted-array/
def find_min(nums)
  left, right = 0, nums.length - 1

  while left < right
    mid = left + (right -left)/2
    if nums[mid] < nums[right]
        right = mid
    else
      left = mid + 1
    end
  end
  nums[left]
end

nums = [3,4,5,1,2]
puts "#{find_min(nums)}"
nums = [4,5,6,7,0,1,2]
puts "#{find_min(nums)}"
nums = [11,13,15,17]
puts "#{find_min(nums)}"
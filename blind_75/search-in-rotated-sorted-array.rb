# https://leetcode.com/problems/search-in-rotated-sorted-array/description/

def search(nums, target)
  left, right = 0, nums.length - 1
  
  while left <= right
    mid = left + (right -left)/2
    return mid if nums[mid] == target
    if nums[left] <= nums[mid]
      if target <= nums[mid] && target >=nums[left]
        right = mid - 1
      else
        left = mid + 1
      end
    else
      if target <= nums[right] && target >= nums[mid]
        left = mid + 1
      else
        right = mid - 1
      end
    end
  end

  return -1 
end

nums = [4,5,6,7,0,1,2]
target = 0
puts "#{search(nums, target)}" # 4
nums = [4,5,6,7,0,1,2]
target = 3
puts "#{search(nums, target)}" # -1
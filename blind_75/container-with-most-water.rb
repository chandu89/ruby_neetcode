# https://leetcode.com/problems/container-with-most-water/description/

def max_area(height)
  left, right = 0, height.length - 1
  area = 0
  while left < right
    distance = right - left
    if height[left] <= height[right]
      area = [area, height[left] * distance].max
      left += 1
    else
      area = [area, height[right] * distance].max
      right -= 1
    end
  end
  area
end

height = [1,8,6,2,5,4,8,3,7]
puts max_area(height)
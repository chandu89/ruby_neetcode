# https://leetcode.com/problems/product-of-array-except-self/description/

def product_except_self(nums)
  len = nums.length
  res = Array.new(len)
  res[0] = 1  
  product = 1
  for i in 1...len
      product *= nums[i-1]
      res[i] = product
  end
  
  product = 1
  (len-2).downto(0) do |i|
      product *= nums[i+1]
      res[i] *= product
  end
  res
end

nums = [1,2,3,4]
puts "#{product_except_self(nums)}"
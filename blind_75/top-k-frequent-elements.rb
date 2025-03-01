# https://leetcode.com/problems/top-k-frequent-elements/description/

def top_k_frequent(nums, k)
  res = Hash.new(0)
  nums.each {|num| res[num] += 1 }
  res.sort_by{|_, val| val}.first(k).to_h.keys
end

nums = [1,1,1,2,2,3] 
k = 2
puts "#{top_k_frequent(nums, k)}"

nums = [4,1,-1,2,-1,2,3]
k = 2
puts "#{top_k_frequent(nums, k)}"
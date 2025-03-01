# https://leetcode.com/problems/longest-consecutive-sequence/
def longest_consecutive(nums)
  num_set = nums.to_set
  max = 0
  num_set.each do |num|
    unless num_set.inlude? num - 1
      length = 1
      length +=1 while num_set.include? length + num 
      max = [max, length].max
    end
  end
  max
end
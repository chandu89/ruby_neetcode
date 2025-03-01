# https://leetcode.com/problems/two-sum/description/

def two_sum(numbers, target_sum)
  result = {}
  numbers.each_with_index do |num, ind|
    if result[target_sum - num].nil?
      result[num] = ind
    else
      return [result[target_sum - num], ind]
    end
  end
  []
end

numbers = [2,7,11,15]
target_sum = 9
puts "#{two_sum(numbers, target_sum)}"

numbers = [3,2,4]
target_sum = 6
puts "#{two_sum(numbers, target_sum)}"
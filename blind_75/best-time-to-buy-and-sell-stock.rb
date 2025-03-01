# https://leetcode.com/problems/best-time-to-buy-and-sell-stock/description/

def max_profit(prices)
  len = prices.length
  left, right = 0, 1

  max_profit = 0
  while right < len
    if prices[left] < prices[right]
      max_profit = [max_profit,  prices[right] - prices[left] ].max
    else
      left = right
    end
    right +=1
  end
  max_profit
end

prices = [7,1,5,3,6,4]

puts "#{max_profit(prices)}"
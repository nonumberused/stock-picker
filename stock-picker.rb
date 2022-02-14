def stock_picker(prices)
  highest_profit = 0
  most_profitable_days = []

  prices.each_with_index do |price_1, index_1|
    prices.each_with_index do |price_2, index_2|
      profit = price_2 - price_1

      if profit > highest_profit && index_1 < index_2
        highest_profit = profit
        most_profitable_days = [index_1, index_2]
      end
    end
  end
  p most_profitable_days
  p highest_profit
end
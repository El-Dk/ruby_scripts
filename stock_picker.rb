# frozen_string_literal: true

def stock_picker(days)
  buy_day = 0
  sell_day = 1
  max_sell = days[sell_day] - days[buy_day]

  (0..(days.length - 2)).each do |i|
    ((i + 1)..(days.length - 1)).each do |j|
      current_sale = days[j] - days[i]
      next unless max_sell < current_sale

      max_sell = current_sale
      buy_day = i
      sell_day = j
    end
  end
  [buy_day, sell_day]
end

p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])

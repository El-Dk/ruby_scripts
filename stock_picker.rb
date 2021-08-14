def stock_picker(days)
  buy_day = 0
  sell_day = 1
  max_sell = days[sell_day] - days[buy_day]
  for i in 0..(days.length - 2)
    for j in (i + 1)..(days.length - 1)
      current_sale = days[j] - days[i]
      if max_sell < current_sale
        max_sell = current_sale
        buy_day = i
        sell_day = j
      end
    end
  end
  [buy_day, sell_day]
end




p stock_picker([17,3,6,9,15,8,6,1,10])
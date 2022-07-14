def stockpicker(prices)
    profit=0
    buy=0
    sell=0

    prices.each_with_index do |i, index|
        for j in index +1..prices.length - 1 do
            new_profit = prices[j] - i 
            if new_profit > profit
                profit = new_profit
                buy = index
                sell = j
            end
        end
    end
    puts [buy, sell]
end

prices = [17,3,6,9,15,8,6,1,10]

stockpicker(prices)
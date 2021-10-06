##LC 1393. Capital Gain/Loss

#Solution
SELECT stock_name, SUM((operation = "Sell")*price - (operation = "Buy")*price) capital_gain_loss
FROM Stocks
GROUP BY 1
                
#Result Runtime: 394 ms / 97.06%; Memory Usage: 0 MB / 100.00%

#Instruction: simple GROUP function

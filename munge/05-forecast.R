# ------------------------------------------------------------------------------
# 05. ABC Forecast                                                           ---
# Please create a trend chart showing the amount of sales over the past 2 years.
# ABC Company would also like you to project sales revenue for the next 3 months.
# ------------------------------------------------------------------------------
################################################################################
## Step 03.01 clean the tables                                              ###
################################################################################

################################################################################
## Step 03.02 - set the tables                                               ###
################################################################################
library(xts)
xts05_forecast <- xts(x = dt02_items_profit$profit, order.by = dt02_items_profit$date)
train <- xts05_forecast[index(xts05_forecast) <= "2020-10-31"]
validation <- sxts05_forecast[index(sxts05_forecast) > "2020-10-31"]
model <- auto.arima(train)
forecast <- forecast(model, h = 121)
forecast_dates <- seq(as.Date("2021-01-01"), length = 121, by = "day")
forecast_xts <- xts(forecast$mean, order.by = forecast_dates)
plot(validation, main = 'Forecast Comparison')
lines(forecast_xts, col = "blue")
################################################################################
## Step 03.03 viz the tables                                                 ###
################################################################################
p03a1_hbar <- plot_ly(dt03_orders_top10,
               x = ~amount,
               y = ~Name,
               type = 'bar',
               orientation = 'h') %>%
               layout(title = "ABC Company - Orders",
               xaxis           = list(
                 title         = "Amount",
                 tickangle     = -45,
                 tickformat    = '$,'),
               yaxis           = list(
                 title         = "Name"))
# ------------------------------------------------------------------------------
p03a2_tree <- treemap(dt03_orders_top10,
        index="Name",
        vSize="amount",
        type="index"
)
################################################################################
## Step 03.99: VERSION HISTORY                                               ###
################################################################################
a00.version = "1.0.0"
a00.ModDate = as.Date("2020-12-28")
# ------------------------------------------------------------------------------
# 2020.12.28 - v.1.0.0
# 1st release
# ------------------------------------------------------------------------------

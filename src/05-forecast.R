# ------------------------------------------------------------------------------
# 05. ABC Forecast                                                           ---
# Please create a trend chart showing the amount of sales over the past 2 years.
# ABC Company would also like you to project sales revenue for the next 3 months.
# ------------------------------------------------------------------------------
################################################################################
## Step 05.01 clean the tables                                              ###
################################################################################
xts05_profit <- xts::as.xts(dt02_items_profit)
as.Date(index(xts05_profit))
xts05_profit_monthly <- xts::apply.monthly(xts05_profit[,6],sum)
xts::tformat(xts05_profit_monthly) <- "%Y-%m"
# ------------------------------------------------------------------------------
xts05_ts <- ts(xts05_profit_monthly,start=c(2019,1),frequency=12)
t<-ts(xts05_profit_monthly)
# ------------------------------------------------------------------------------
dt05_profit          <- as.data.table(xts05_profit, keep.rownames = TRUE) # xts to data.table
dt05_profit_monthly  <- as.data.table(xts05_profit_monthly, keep.rownames = TRUE) # xts to data.table
dt05_profit_monthly$index<-format(dt05_profit_monthly$index, "%Y-%m")
# ------------------------------------------------------------------------------
# fit an ARIMA model of order P, D, Q
# fit <- arima(xts05_profit_monthly, order=c(p, d, q))

# predictive accuracy

# accuracy(fit)

# predict next 3 observations
# forecast(fit, 3)
# plot(forecast(fit, 3))
################################################################################
## Step 05.02 - set the tables                                               ###
################################################################################
# library(forecast)
# Output to be created as png file
# png(file = "TimeSeriesGFG.png")

# Plotting graph without forecasting
# plot(BJsales, main = "Graph without forecasting",
# col.main = "darkgreen")

# Saving the file
# dev.off()

# Output to be created as png file
# png(file = "TimeSeriesARIMAGFG.png")

# Fitting model using arima model
# fit <- auto.arima(BJsales)

# Next 10 forecasted values
# forecastedValues <- forecast(fit, 10)

# Print forecasted values
# print(forecastedValues)

# plot(forecastedValues, main = "Graph with forecasting",
# col.main = "darkgreen")

# saving the file
# dev.off()
################################################################################
## Step 03.03 viz the tables                                                 ###
################################################################################Sales Trend
p05a1_line <- 
  plot_ly(dt05_profit,
            x            = ~index,     
            type         = 'scatter', 
            mode         = 'lines+markers',  
            yaxis        = 'y2',
            y            = ~profit, 
            name         = 'Tier 1',  
            line         = list(color = '#012169')) %>%
          layout(
            title        = "ABC Company - 2 Year Sales Trend",
            xaxis        = list(
              title      = "Date",
              tickangle  = -45),
            yaxis        = list(
              title      = "Awd Amt"),
            barmode      = 'group',
            tickformat   = "$")
# ------------------------------------------------------------------------------Monthly Profits
p05a1_bar <- setorder(dt05_profit_monthly,index) %>%
  plot_ly(x       = ~index, 
          y       = ~profit, 
          marker  = list(color = '#012169'), 
          name    = 'Graduate', 
          type    = 'bar') %>%
    layout(
      title = "ABC Company - Monthly Profit",
      xaxis          = list(
        title        = "Date",
        tickangle    = -45),
      yaxis          = list(
        title        = "Profit"),
      barmode      = 'group',
      tickformat   = '$,')
################################################################################
## Step 03.99: VERSION HISTORY                                               ###
################################################################################
a00.version = "1.0.0"
a00.ModDate = as.Date("2020-12-28")
# ------------------------------------------------------------------------------
# 2020.12.28 - v.1.0.0
# 1st release
# ------------------------------------------------------------------------------

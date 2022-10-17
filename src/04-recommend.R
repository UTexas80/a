# ------------------------------------------------------------------------------
# 04 ABC Recommendation                                                      ---
# Moving forward, based on profitability, which item do you recommend that   ---
# ABC Company spend more on marketing to attract more sales? (For all regions)---
# ------------------------------------------------------------------------------
################################################################################
## Step 04.01 clean the tables                                              ###
################################################################################

################################################################################
## Step 024.02 - set the tables                                               ###
################################################################################
dt04_profit_total <- dt02_items_profit[
  , 
  lapply(.SD, sum, na.rm=TRUE), by=item, .SDcols=c("profit", "units") ]
dt04_profit_total[, profit_per_unit    := profit / units] 
################################################################################
## Step 04.03 viz the tables                                                 ###
################################################################################
p04b1_bar <-  plot_ly(dt04_profit_total,
                x         = ~item,
                y         = ~profit,
                marker    = list(color = '#012169'),
                name      = 'Item Count',
                type      = 'bar') %>%
        layout( title     = "ABC Company - Item Profitability",
                xaxis     = list(
                  title   = "Item Name",
                tickangle = -45),
                yaxis     = list(
                  title   = "Profit Amount",
                  tickformat = "$,"))
# ------------------------------------------------------------------------------
p04b2_bar <-  plot_ly(dt04_profit_total,
                      x         = ~item,
                      y         = ~profit_per_unit,
                      marker    = list(color = '#012169'),
                      name      = 'Item Count',
                      type      = 'bar') %>%
  layout( title     = "ABC Company - Item Profitability Per Unit",
          xaxis     = list(
            title   = "Item Name",
            tickangle = -45),
          yaxis     = list(
            title   = "Profit Per Unit",
            tickformat = "$,"))
################################################################################
## Step 04.99: VERSION HISTORY                                               ###
################################################################################
a00.version = "1.0.0"
a00.ModDate = as.Date("2020-12-28")
# ------------------------------------------------------------------------------
# 2020.12.28 - v.1.0.0
# 1st release
# ------------------------------------------------------------------------------

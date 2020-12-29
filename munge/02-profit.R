# ------------------------------------------------------------------------------
# 02. ABC Profit                                                             ---
# ------------------------------------------------------------------------------
################################################################################
## Step 02.01 clean the tables                                              ###
################################################################################
dtTables        <- data.table::tables()
sapply(dtTables[NAME %like% "abc" ,],
    function(x) janitor::clean_names(data.table(x)))
################################################################################
## Step 02.02 - set the tables                                               ###
################################################################################
dt02_items_profit <- abc.data[abc.pricing]
dt02_items_profit[, item_cost := units * unit_price]
dt02_items_profit[, profit    := item_cost - total_cost]
# ------------------------------------------------------------------------------
dt02_central_profit <- dt02_items_profit[
  region=="Central", 
  lapply(.SD, sum, na.rm=TRUE), by=item, .SDcols=c("profit", "units") ]
dt02_central_profit[, profit_per_unit    := profit / units] 
################################################################################
## Step 02.03 viz the tables                                                 ###
################################################################################
p02a1_bar <-  plot_ly(dt02_central_profit,
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
p02a2_bar <-  plot_ly(dt02_central_profit,
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
## Step 02.99: VERSION HISTORY                                               ###
################################################################################
a00.version = "1.0.0"
a00.ModDate = as.Date("2020-12-28")
# ------------------------------------------------------------------------------
# 2020.12.28 - v.1.0.0
# 1st release
# ------------------------------------------------------------------------------

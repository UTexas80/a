# ------------------------------------------------------------------------------
# 03. ABC Orders                                                             ---
# Who ordered the most units overall? How much did they spend in total?      ---
# ------------------------------------------------------------------------------
################################################################################
## Step 03.01 clean the tables                                              ###
################################################################################

################################################################################
## Step 03.02 - set the tables                                               ###
################################################################################
dt03_orders_top10 <- setorder(head(data.table::setorder(abc.data, -units)[,-c(1,6)],10), "Name")
# ------------------------------------------------------------------------------
dt03_orders_top10_tot_cost <-setorder(dt03_orders_top10[,-3][, sum(total_cost), by = c("Name", "region")],-V1)
dt03_orders_top10_units    <-setorder(dt03_orders_top10[,-3][, sum(units), by = c("Name", "region")],-V1)
# ------------------------------------------------------------------------------
data.table::setkey(dt03_orders_top10_tot_cost, Name, region)
data.table::setkey(dt03_orders_top10_units, Name, region)
dt03_orders_top10 <- dt03_orders_top10_tot_cost[dt03_orders_top10_units]
names(dt03_orders_top10)[3:4] <- c("amount", "units")
dt03_orders_top10 <- dt03_orders_top10[,c(1:2,4,3)]
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

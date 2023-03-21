# ------------------------------------------------------------------------------
# 99. Forecasting                                                            ---
# ------------------------------------------------------------------------------
################################################################################
## Step 99.01 create time series                                             ###
################################################################################
msa_ts       <- ts(dx_msa_5190$retail_avg,start=c(2010,1),frequency=365)
msa_model    <- forecast::auto.arima(msa_ts)
# msa_forecast <- forecast(msa_model, level=c(95),  h=10*12)
# ------------------------------------------------------------------------------
ts.msa_5190_mon <- ts(to.monthly(dx_msa_5190$retail_avg), frequency = 12)
# ------------------------------------------------------------------------------
# Step 99.02 Bollinger Bands Start
# ------------------------------------------------------------------------------
bb.20          <- BBands(dx_msa_5190$retail_avg,20,sd=2,maType=EMA)             # BBands - 20 Day EMA
disp           <- Delt(bb.20[,"dn"],bb.20[,"up"])                               # Create Dispersion Column
dispDiff       <- Delt(disp)                                                    # Create Daily Dispersion Difference Pct Column
xts_bb20_disp  <- cbind(dx_msa_5190, bb.20,disp, dispDiff)[,c(5:10)]
dt_bb20_disp   <- data.table(xts_bb20_disp, keep.rownames = TRUE)
# ------------------------------------------------------------------------------
colnames(xts_bb20_disp)[5:6] <- c("pct", "delta")
names(dt_bb20_disp)[c(1,6:7)] <- c("date", "pct", "delta")
# ------------------------------------------------------------------------------
# data.table IDateTime integer date class       https://tinyurl.com/mr35p42e
d<-daily.Yesterday[, mean(Price), by = list(hour = hour(as.ITime(lubridate::as_datetime(daily.Yesterday$DataSource_Date))))]]
d<-data.table::setorder(d,hour)
# ------------------------------------------------------------------------------
################################################################################
## Step 00.99: VERSION HISTORY                                               ###
################################################################################
a99.version = "1.0.0"
a99.ModDate = as.Date("2022-10-19")
# ------------------------------------------------------------------------------
# 2022.10.19 - v.1.0.0
# 1st release
# ------------------------------------------------------------------------------

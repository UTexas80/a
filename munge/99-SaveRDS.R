################################################################################
## Step 99.00 Save .rds files                                                ###
################################################################################
saveRDS(dt.data,         file = here::here("dashboard/rds/", "dt.data.rds"))
# ------------------------------------------------------------------------------
saveRDS(dt.msa,          file = here::here("dashboard/rds/", "dt.msa.rds"))
saveRDS(dt.output,       file = here::here("dashboard/rds/", "dt.output.rds"))
saveRDS(dt.retail,       file = here::here("dashboard/rds/", "dt.retail.rds"))
saveRDS(dt.retail_daily, file = here::here("dashboard/rds/", "dt.retail_daily.rds"))
saveRDS(dt.zip,          file = here::here("dashboard/rds/", "dt.zip.rds"))
# ------------------------------------------------------------------------------
saveRDS(dx_msa_5190,     file = here::here("dashboard/rds/", "dx_msa_5190.rds"))
saveRDS(dx_zip_8723,     file = here::here("dashboard/rds/", "dx_zip_8723.rds"))
saveRDS(dx_zip_8724,     file = here::here("dashboard/rds/", "dx_zip_8724.rds"))
# ------------------------------------------------------------------------------
saveRDS(dx_ret.cum_5190, file = here::here("dashboard/rds/", "dx_ret.cum_5190.rds"))
saveRDS(dx_ret.cum_8723, file = here::here("dashboard/rds/", "dx_ret.cum_8723.rds"))
saveRDS(dx_ret.cum_8724, file = here::here("dashboard/rds/", "dx_ret.cum_8724.rds"))
# ------------------------------------------------------------------------------
saveRDS(msa_ts,          file = here::here("dashboard/rds/", "msa_ts.rds"))
saveRDS(msa_model,       file = here::here("dashboard/rds/", "msa_model.rds"))
# saveRDS(msa_forecast,    file = here::here("dashboard/rds/", "msa_fcrecast.rds"))
saveRDS(dt_bb20_disp,    file = here::here("dashboard/rds/", "dt_bb20_disp.rds"))
################################################################################
## Step 00.99: VERSION HISTORY                                               ###
################################################################################
a99.version <- "1.0.0"
a99.ModDate <- as.Date("2022-10-18")
# ------------------------------------------------------------------------------
# 2022.10.18 - v.1.0.0
# 1st release
# ------------------------------------------------------------------------------


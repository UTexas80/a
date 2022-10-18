################################################################################
## Step 99.00 Save .rds files                                                ###
################################################################################
saveRDS(dt.data.out,    file  = here::here("dashboard/rds/", "dt.data.out.rds"))
# ------------------------------------------------------------------------------
saveRDS(dt.brand.type,  file  = here::here("dashboard/rds/", "dt.brand.type.rds"))
saveRDS(dt.date,        file  = here::here("dashboard/rds/", "dt.date.rds"))
saveRDS(dt.logo,        file  = here::here("dashboard/rds/", "dt.logo.rds"))
saveRDS(dt.mkt.share,   file  = here::here("dashboard/rds/", "dt.mkt.share.rds"))
saveRDS(dt.msa,         file  = here::here("dashboard/rds/", "dt.msa.rds"))
saveRDS(dt.region,      file  = here::here("dashboard/rds/", "dt.region.rds")) 
saveRDS(dt.roi,         file  = here::here("dashboard/rds/", "dt.roi.rds"))
saveRDS(dt.source,      file  = here::here("dashboard/rds/", "dt.source.rds")) 
# ------------------------------------------------------------------------------
saveRDS(dt_blob,        file  = here::here("dashboard/rds/", "dt_blob.rds"))
saveRDS(dt_plt_data,    file  = here::here("dashboard/rds/", "dt_plt_data.rds"))
saveRDS(dt_plt_quad_pct,file  = here::here("dashboard/rds/", "dt_plt_quad_pct.rds"))
saveRDS(dt_quadrant,    file  = here::here("dashboard/rds/", "dt_quadrant.rds"))
saveRDS(dt_mon_quad,    file  = here::here("dashboard/rds/", "dt_mon_quad.rds"))
################################################################################
## Step 00.99: VERSION HISTORY                                               ###
################################################################################
a99.version <- "1.0.0"
a99.ModDate <- as.Date("2022-08-01")
# ------------------------------------------------------------------------------
# 2022.08.01 - v.1.0.0
# 1st release
# ------------------------------------------------------------------------------


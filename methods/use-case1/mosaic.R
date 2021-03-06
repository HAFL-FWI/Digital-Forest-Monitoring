############################################################
# Mosaic rasters with gdal_merge
#
# by Dominique Weber, BFH-HAFL
############################################################

mosaic <- function(path, out, pattern_str="lv95.tif") {
  files = list.files(path, pattern = pattern_str, full.names = T)
  path = dirname(files[[1]])
  in_files = do.call(paste, c(as.list(files), sep=" "))
  cmd = paste("gdal_merge.py -o", out, in_files)
  system(cmd)
}
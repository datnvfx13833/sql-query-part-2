SELECT FORMAT(SQRT(POWER(MAX(lat_n)-MIN(lat_n),2) + POWER(MAX(long_w)-MIN(long_w),2)),'###.####') 
FROM Station

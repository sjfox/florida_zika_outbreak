library(tidyverse)
library(cowplot)
library(lubridate)

fl_ts <- read_csv("data/fl_zika_cases.csv")
cum_plot <- ggplot(fl_ts, aes(date, cum_cases)) + geom_line() +
              labs(y="Cumulative Cases", x="Date") + geom_point() + 
              background_grid() 
  

save_plot("figs/cumulative_plot.pdf", plot = cum_plot, base_height = 4, base_aspect_ratio = 2)

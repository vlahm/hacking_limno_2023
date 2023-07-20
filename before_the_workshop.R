## BEFORE THE WORKSHOP
## please install the following packages


#macrosheds
install.packages('devtools')
devtools::install_github('https://github.com/MacroSHEDS/macrosheds.git')

#tidyverse (dplyr, stringr, readr, etc.)
install.packages('tidyverse')


## Then download the MacroSheds data we will use


library(macrosheds)

# this is where files will be downloaded. feel free to change it.
project_root <- '~/macrosheds_workshop'

# datasets we will use
ms_download_ws_attr(project_root, dataset = 'summaries')
ms_download_core_data(project_root, domains = c('niwot', 'plum', 'east_river', 'santee'))


## These packages are optional (only used here and there, and the overall sequence doesn’t depend on them)


install.packages('xts')         # time series representation
install.packages('dygraphs')    # interactive plots
install.packages('factoextra')  # ordination, etc.
install.packages('mapview')     # interactive maps
install.packages('data.table')  # efficient computation
install.packages('whitebox')    # geospatial processing
whitebox::install_whitebox() #additional whitebox binaries. if this fails, use the next line
# whitebox::install_whitebox(platform = 'linux_musl')

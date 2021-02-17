##############################################################
## Author: Jack Hastings                                    ##  
## created: 2/17/2021                                       ##
## last modified: 2/17/2021                                 ##
## Description:                                             ##
## Nitrogen, NIR comparison in Bartlett Inventory Plots     ##
##############################################################

#########
#Required
#########

library(tidyverse)


########
#Import
#######

spp_codes <- readr::read_csv('data_files/BEF_sppCodes.csv')
BEF_inventory <- readr::read_csv('data_files/BEF_Inventory_Overstory_2001-03.csv')

#merge
inventory_merge <- BEF_inventory %>%
  dplyr::left_join(spp_codes, by = c('Spp', 'Spp_Old'))

#paired down -- inventory. Revisit as needed
inven <- inventory_merge %>%
  dplyr::select(c('Plot_Number', 'DBH_Class', 'Plot_Area'))

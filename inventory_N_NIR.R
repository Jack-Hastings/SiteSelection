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
library(sf)


########
#Import
#######

# BEF species ID codes and inventory data
spp_codes <- read_csv('data_files/BEF_sppCodes.csv')
BEF_inventory <- read_csv('data_files/BEF_Inventory_Overstory_2001-03.csv', guess_max = 3000)

#BEF plot coordinates; 400+ plots 
plot_loc <- read_sf('data_files/BEFplots/BEFInventory_Extents_UTM.shp')

#merge
inventory_merge <- BEF_inventory %>%
  left_join(spp_codes, by = c('Spp', 'Spp_Old'))

#paired down -- inventory. Revisit as needed
inven <- inventory_merge %>%
  select(c('Plot_Number','Common_Name', 'DBH_Class', 'Plot_Area'))


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
inventory <- readr::read_csv('data_files/BEF_Inventory_Overstory_2001-03.csv')


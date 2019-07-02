##HTML scraping
library(tidyverse)
library(rvest)

html_doc %>% html_nodes("head title") %>% html_text() #html_doc includes the entire website.
#html_nodes extracts a subset of html doc that matches "head title" pattern. html_text 
#extracts text




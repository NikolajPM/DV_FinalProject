require(ggthemes)
require(scales)

int_usage %>% select(HHTYP, GEO, YEAR2007, YEAR2009, YEAR2011, YEAR2013) %>% filter(HHTYP %in% c("All_types_without_dependent_children", "All_types_with_dependent_children", "Three_or_more_adults_with_dependent_children", "Three_or_more_adults", "Single_person_with_dependent_children", "Single_person"))  %>% filter(GEO == "United_Kingdom") %>%  tbl_df                                                                             

p <- int_usage %>% select(HHTYP, GEO, YEAR2007, YEAR2009, YEAR2011, YEAR2013) %>% filter(HHTYP %in% c("All_types_without_dependent_children", "All_types_with_dependent_children", "Three_or_more_adults_with_dependent_children", "Three_or_more_adults", "Single_person_with_dependent_children", "Single_person"))  %>% filter(GEO == "United_Kingdom") %>% distinct(HHTYP)  %>% tbl_df 

p <- gather(p, "year", "hous_perc", 3:6); head(p)
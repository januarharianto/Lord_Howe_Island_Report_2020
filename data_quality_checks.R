# load packages
library(tidyverse) # data wrangling and plotting
library(readxl)    # import excel files
# library(dlookr)    # diagnose data
library(naniar)
library(skimr)
library(plotly)
library(viridis)

# import data
fishing <- read_excel("data/Fishing_Activity.xlsx")
catch <- read_excel("data/Catch.xlsx")

# let's check fishing data first
# check structure
glimpse(fishing)
gg_miss_var(fishing)




glimpse(catch)
# check issue 13-15

shk <- 
  catch %>%
  filter(Species == "SHK") %>% # filter Galapagous Whaler
  ggplot(aes(x = Length)) +
  geom_histogram() +
  theme_classic()
# plot interactive plot
ggplotly(shk)

# what's with 298 cm
catch %>%
  filter(Species == "SHK") %>% # filter Galapagous Whaler
  filter(Length > 298)
# Actually, Google search shows they grow up to 330cm so that's fine.


catch %>%
  select(-(8:11)) %>%
  filter(`DATA ISSUE` == FALSE) %>%
  ggplot(aes(Length, colour = Species, fill = Species)) +
    geom_histogram() +
    scale_fill_viridis(discrete=TRUE) +
    scale_color_viridis(discrete=TRUE) +
    facet_wrap(~ Species)
# too many species


catch %>%
  select(-(8:11)) %>%
  filter(`DATA ISSUE` == FALSE) %>%
  filter(Species == "AJ") %>%
  ggplot(aes(Length, colour = Species, fill = Species)) +
  geom_histogram() +
  scale_fill_viridis(discrete=TRUE) +
  scale_color_viridis(discrete=TRUE)

catch %>%
  select(-(8:11)) %>%
  filter(`DATA ISSUE` == FALSE) %>%
  filter(Species == "BCD") %>%
  ggplot(aes(Length, colour = Species, fill = Species)) +
  geom_histogram() +
  scale_fill_viridis(discrete=TRUE) +
  scale_color_viridis(discrete=TRUE)

catch %>%
  select(-(8:11)) %>%
  filter(`DATA ISSUE` == FALSE) %>%
  filter(Species == "BET") %>%
  ggplot(aes(Length, colour = Species, fill = Species)) +
  geom_histogram() +
  scale_fill_viridis(discrete=TRUE) +
  scale_color_viridis(discrete=TRUE)

catch %>%
  select(-(8:11)) %>%
  filter(`DATA ISSUE` == FALSE) %>%
  filter(Species == "BETR") %>%
  ggplot(aes(Length, colour = Species, fill = Species)) +
  geom_histogram() +
  scale_fill_viridis(discrete=TRUE) +
  scale_color_viridis(discrete=TRUE)

catch %>%
  select(-(8:11)) %>%
  filter(`DATA ISSUE` == FALSE) %>%
  filter(Species == "BF") %>%
  ggplot(aes(Length, colour = Species, fill = Species)) +
  geom_histogram() +
  scale_fill_viridis(discrete=TRUE) +
  scale_color_viridis(discrete=TRUE)

catch %>%
  select(-(8:11)) %>%
  filter(`DATA ISSUE` == FALSE) %>%
  filter(Species == "BFT") %>%
  ggplot(aes(Length, colour = Species, fill = Species)) +
  geom_histogram() +
  scale_fill_viridis(discrete=TRUE) +
  scale_color_viridis(discrete=TRUE)

catch %>%
  select(-(8:11)) %>%
  filter(`DATA ISSUE` == FALSE) %>%
  filter(Species == "BON") %>%
  ggplot(aes(Length, colour = Species, fill = Species)) +
  geom_histogram() +
  scale_fill_viridis(discrete=TRUE) +
  scale_color_viridis(discrete=TRUE)


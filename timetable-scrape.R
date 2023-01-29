#### Set-Up ####
# packages:
library(fs)
library(tidyverse)
library(rvest)
library(xml2)

# data:
timetable <- path_wd("Timetable. Fitness Classes London _ Third Space.html") %>%
  read_html()


#### Class Info Scrape ####
# timetable %>% html_elements(".fkl-class") %>% .[[1]]
class_title <- timetable %>% 
  html_elements(".fkl-class-title") %>% 
  html_text2()
time <- timetable %>% 
  html_elements(".fkl-time") %>% 
  html_text2()
sublocation <- timetable %>% 
  html_elements(".fkl-sublocation") %>% 
  html_text2()
trainer <- timetable %>% 
  html_elements(".fkl-trainer") %>% 
  html_text2()
(timetable_summary <- tibble(time, class_title, sublocation, trainer))

# save:
saveRDS(timetable_summary, "data/timetable_summary.rds")


#### My Classes ####
timetable %>% html_elements(".fkl-date") %>% html_text2()
timetable %>% html_elements(".fkl-class") %>% html_text2()
# timetable %>% html_elements(".fkl-cal-td")
# timetable %>% html_elements(".fkl-cal-td") %>% .[[1]]

#timetable %>% html_elements(".fkl-class-title")
#timetable %>% html_elements(".fkl-time")
  
"aqua fit"

"just ride"
"wattbike"

"dance fit"
"step"

"boxing"
"kickboxing"
"boxing fdm"
"boxing padwork"
"muay thai"

"the method"
"pulse"
"dynamic pilates"

"force"
"core 45"

"yard kettlebells"
"formula 3"
"trx max"

## NotePad: ####
# x <- timetable %>% html_elements("main")
# html_elements("a") #html_elements("option") #html_elements("button")


timetable <- read_html("https://www.thirdspace.london/timetable/")
session(timetable)

# Pdf Print-Outs:
# "https://www.thirdspace.london/media/Third-Space-Class-Timetable-June-2021-1.pdf"
# <div class="fkl-cal-th">
#   [1] <div class="fkl-date-title">Today</div>
#   [2] <div class="fkl-date">27 Aug</div>

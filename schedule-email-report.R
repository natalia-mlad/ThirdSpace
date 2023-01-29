library(fs)
library(taskscheduleR)

# First check whether the code runs without errors by itself:
# source(path_wd("/auto-email-report.R"))

# Then create the scheduled task:
taskscheduler_create(
  taskname = "ThirdSpace-Report-Email",
  rscript = path_wd("/auto-email-report.R"),
  schedule = "WEEKLY",
  starttime = "06:00",
  days = c("MON", "WED", "SAT")
)

# Test it:
# taskscheduler_runnow("ThirdSpace-Report-Email")

# taskscheduler_delete("ThirdSpace-Report-Email")

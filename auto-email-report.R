library(fs)
library(glue)
library(blastula)
Sys.setenv(RSTUDIO_PANDOC="C:/Program Files/RStudio/bin/pandoc")

path_home("OneDrive/myR/ThirdSpace/email-report.Rmd") %>%
  render_email() %>% 
  # output_options = list(df_print = "kable")
  # envir = parent.frame(), output_options = list(), render_options = list()
  smtp_send(
    to = "natashka.ml@gmail.com",
    cc = "safarmer@icloud.com",
    from = "natashka.ml@gmail.com",
    subject = glue("Natalia's ThirdSpace Report ({Sys.Date()})"),
    credentials = creds_file(path_home("OneDrive/myR/ThirdSpace/gmail_creds"))
  )

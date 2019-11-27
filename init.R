# init.R
#
# R code to install packages if not already installed
#

my_packages = c(
  "beeswarm",
  "collapsibleTree",
  "curl",
  "data.table",
  "data.tree",
  "DBI",
  "DescTools",
  "dplyr",
  "DT",
  "dygraphs",
  "future",
  "gtools",
  "gridExtra",
#  "htmlwidgets",
#  "httr",
#  "jsonlite",
#  "listenv",
#  "lubridate",
#  "plotly",
#  "promises",
#  "psych",
# "qcc",
#  "readxl",
#  "remotes",
#  "reshape",
#  "reshape2",
#  "rjson",
#  "RJSONIO",
#  "rpivotTable",
#  "RPostgreSQL",
  "shiny",
#  "shinyalert",
#  "shinycssloaders",
  "shinydashboard",
  "shinyjs",
  "shinyWidgets",
#  "stringi",
#  "summarytools",
#  "tibble",
#  "tidyverse",
#  "webshot",
#  "xts",
  "zoo"
  )

install_if_missing = function(p) {
  if (p %in% rownames(installed.packages()) == FALSE) {
    install.packages(p)
  }
}

invisible(sapply(my_packages, install_if_missing))

webshot::install_phantomjs()

remotes::install_github("blmoore/rjsonpath")

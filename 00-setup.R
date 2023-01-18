usethis::git_vaccinate()

install.packages("devtools")
install.packages("here")
install.packages("spelling")
install.packages("tidyverse")
install.packages("testthat")
install.packages("yaml")

usethis::use_description()
usethis::use_mit_license()

usethis::use_package("dplyr")
usethis::use_package("here")
usethis::use_package("purrr")
usethis::use_package("readr")
usethis::use_package("testthat")
usethis::use_package("markdown", type = "suggests")
usethis::use_package("spelling", type = "suggests")
usethis::use_package("rmarkdown", type = "suggests")
usethis::use_package("tidyverse", type = "suggests")

usethis::use_readme_rmd()
usethis::use_code_of_conduct("corrado.lanera@ubep.unipd.it")
usethis::use_lifecycle_badge(stage = "experimental")

spelling::spell_check_package()
spelling::update_wordlist()

renv::status()
renv::snapshot()

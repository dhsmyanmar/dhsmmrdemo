## code to prepare `DATASET` dataset goes here


# IR dataset
IRdata <-  haven::read_dta("data-raw/ir_women.dta")

usethis::use_data(IRdata, overwrite = TRUE)


# PR dataset
PRdata <-  haven::read_dta("data-raw/pr_person.dta")

usethis::use_data(PRdata, overwrite = TRUE)




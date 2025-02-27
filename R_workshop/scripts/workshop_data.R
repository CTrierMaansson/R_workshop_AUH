#### Setting up environment - Task 1 ####

#set_up_environment()

th <- load_packages()

#### Analyzing iris - Task 2####

my_func_1()

my_func_2(data = iris, variable = "Sepal.Width")

my_func_3(variable = "Sepal.Width")

my_func_4(variable = "Sepal.Width")

my_func_4(data = Puromycin, variable = "rate")

#### manipulating iris - Task 3 ####
iris_mod <- tidy_func_1()

iris_groups <- tidy_func_2()

iris_group_freq <- tidy_func_3()

#### manipulating mtcars - Task 4 ####

mtcars_types <- data.frame(car = c("Mazda RX4",
                                   "Mazda RX4 Wag",
                                   "Datsun 710",
                                   "Merc 240D",
                                   "Merc 230",
                                   "Merc 280",
                                   "Merc 280C",
                                   "Merc 450SE",
                                   "Merc 450SL",
                                   "Merc 450SLC",
                                   "Toyota Corolla",
                                   "Toyota Corona",
                                   "Hornet Sportabout",
                                   "Hornet 4 Drive",
                                   "Valiant",
                                   "Duster 360",
                                   "Cadillac Fleetwood",
                                   "Lincoln Continental",
                                   "Fiat 128"),
                           manufacturer = c("Mazda",
                                            "Mazda",
                                            "Nissan",
                                            rep("Mercedes",7),
                                            "Toyota",
                                            "Toyota",
                                            "AMC",
                                            "AMC",
                                            rep("Other",5)))

mtcars_mod <- mtcars
mtcars_mod$car <- rownames(mtcars)
rownames(mtcars_mod) <- NULL


mtcars_mod_sele <- tidy_func_4()


#### Saving files - Task 5 ####

write.table(mtcars_mod_sele,
            "C:/Users/chris/OneDrive/1PhD/R_workshop_AUH/R_workshop/data_files/mtcars_mod_sele.txt",
            sep = "\t")

mtcars_mod_sele <- read.table("C:/Users/chris/OneDrive/1PhD/R_workshop_AUH/R_workshop/data_files/mtcars_mod_sele.txt",
                              header = TRUE,
                              sep = "\t")




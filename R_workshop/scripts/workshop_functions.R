set_up_environment <- function(){
    wd <- getwd()
    dir.create("R_workshop")
    #2
    wd <- paste0(wd,"/R_workshop/")
    setwd(wd)
    dir.create("scripts")
    #3
    func_file <- "scripts/workshop_functions.R"
    data_file <- "scripts/workshop_data.R"
    plot_file <- "scripts/workshop_plots.R"
    file.create(func_file, overwrite = F)
    file.create(data_file, overwrite = F)
    file.create(plot_file, overwrite = F)
    #4
    dir.create("plots")
    #5
    dir.create("data_files")
    
    #Test everything is correct
    list.files(wd,include.dirs = T,full.names = T,recursive = T)
}

load_packages <- function(){
    library(dplyr)
    library(ggplot2)
    library(ggpubr)
    library(tidyr)
    library(viridis)
    `%ni%` <- Negate(`%in%`)
    th <- theme(
        legend.background = element_rect(),
        plot.title = element_text(angle = 0, size = 16, face = 'bold', vjust = 1),
        plot.caption = element_text(angle = 0, size = 10, vjust = 1, hjust = 0.37),
        axis.text.x = element_text(angle = 0, size = 12),
        axis.text.y = element_text(angle = 0, size = 12),
        axis.title = element_text(size = 14, face = 'bold'),
        axis.title.x = element_text(size = 14, face = 'bold'),
        axis.title.y = element_text(size = 14, face = 'bold'),
        axis.line = element_line(colour = 'black'),
        legend.text = element_text(size = 12), 
        title = element_text(size = 14, face = "bold"))
    return(th)
}

my_func_1 <- function(data = iris){
    len_mean <- mean(data$Sepal.Length)
    wid_mean <- mean(data$Sepal.Width)
    res <- list("Sepal.Length_mean" = len_mean,
                "Sepal.Width_mean" = wid_mean)
    return(res)
}

my_func_2 <- function(data = iris,variable){
    avg <- mean(data[[variable]])
    label = paste0(variable,"_mean")
    res <- list(avg)
    names(res) <- label
    return(res)
}

my_func_3 <- function(data = iris,variable){
    if(!is.character(variable)){
        stop("variable has to be a character")
    }
    values <- data[[variable]]
    if(!is.numeric(values)){
        stop(paste0("Values in the variable:\n",
                    variable,"\n",
                    "are not numeric. Select another variable"))
    }
    avg <- mean(values)
    label = paste0(variable,"_mean")
    res <- list(avg)
    names(res) <- label
    return(res)
}

my_func_4 <- function(data = iris,variable){
    if(!is.character(variable)){
        stop("variable has to be a character")
    }
    if(!is.data.frame(data)){
        stop("data has to be a data.frame")
    }
    vars <- colnames(data)
    if(!(variable %in% vars)){
        stop(paste0("The variable:\n",
                    variable,"\n",
                    "does not exist in the data set. Select another variable name"))
    }
    values <- data[[variable]]
    if(!is.numeric(values)){
        stop(paste0("Values in the variable:\n",
                    variable,"\n",
                    "are not numeric. Select another variable"))
    }
    avg <- mean(values)
    label = paste0(variable,"_mean")
    res <- list(avg)
    names(res) <- label
    return(res)
}

tidy_func_1 <- function(data = iris){
    df <- data %>% 
        mutate(Petal.Length_class = ifelse(Petal.Length >= 5,
                                           "long","short"))
    return(df)
}

tidy_func_2 <- function(data = iris_mod){
    df <- data %>% 
        group_by(Species,Petal.Length_class) %>% 
        count() %>% 
        ungroup()
    return(df)
}

tidy_func_3 <- function(data = iris_groups){
    df <- data %>% 
        group_by(Species) %>% 
        reframe(Petal.Length_class = Petal.Length_class,
                n = n,
                percent = n/sum(n)*100) %>% 
        ungroup()
    return(df)
}


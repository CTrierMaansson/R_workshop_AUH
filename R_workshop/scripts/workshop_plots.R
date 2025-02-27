#### ggplots - Task 6 ####
gg_1 <- gg_func_1() 
ggsave(filename = "gg_1.pdf",
       plot = gg_1,
       path = "C:/Users/chris/OneDrive/1PhD/R_workshop_AUH/R_workshop/plots/",
       dpi = 300,
       width = 2500, 
       height = 2500, 
       units = "px",
       device = "pdf")

gg_2 <- gg_func_2()  
ggsave(filename = "gg_2.pdf",
       plot = gg_2,
       path = "C:/Users/chris/OneDrive/1PhD/R_workshop_AUH/R_workshop/plots/",
       dpi = 300,
       width = 2500, 
       height = 2500, 
       units = "px",
       device = "pdf")

gg_3 <- gg_func_3()  
ggsave(filename = "gg_3.pdf",
       plot = gg_3,
       path = "C:/Users/chris/OneDrive/1PhD/R_workshop_AUH/R_workshop/plots/",
       dpi = 300,
       width = 2500, 
       height = 2500, 
       units = "px",
       device = "pdf")


gg_4_ver <- gg_func_4(species = "versicolor")   
ggsave(filename = "gg_4_virginica.pdf",
       plot = gg_4_vir,
       path = "C:/Users/chris/OneDrive/1PhD/R_workshop_AUH/R_workshop/plots/",
       dpi = 300,
       width = 2500, 
       height = 2500, 
       units = "px",
       device = "pdf")

gg_4_vir <- gg_func_4(species = "virginica")
ggsave(filename = "gg_4_versicolor.pdf",
       plot = gg_4_ver,
       path = "C:/Users/chris/OneDrive/1PhD/R_workshop_AUH/R_workshop/plots/",
       dpi = 300,
       width = 2500, 
       height = 2500, 
       units = "px",
       device = "pdf")


gg_5_vir <- gg_func_5(species = "virginica")
ggsave(filename = "gg_5_virginica.pdf",
       plot = gg_5_vir,
       path = "C:/Users/chris/OneDrive/1PhD/R_workshop_AUH/R_workshop/plots/",
       dpi = 300,
       width = 2500, 
       height = 2500, 
       units = "px",
       device = "pdf")
gg_5_ver <- gg_func_5(species = "versicolor")  
ggsave(filename = "gg_5_versicolor.pdf",
       plot = gg_5_ver,
       path = "C:/Users/chris/OneDrive/1PhD/R_workshop_AUH/R_workshop/plots/",
       dpi = 300,
       width = 2500, 
       height = 2500, 
       units = "px",
       device = "pdf")
gg_5_all <- gg_func_5()
ggsave(filename = "gg_5_all.pdf",
       plot = gg_5_all,
       path = "C:/Users/chris/OneDrive/1PhD/R_workshop_AUH/R_workshop/plots/",
       dpi = 300,
       width = 2500, 
       height = 2500, 
       units = "px",
       device = "pdf")


gg_6_a <- gg_func_6_a() 
ggsave(filename = "gg_6_a.pdf",
       plot = gg_6_a,
       path = "C:/Users/chris/OneDrive/1PhD/R_workshop_AUH/R_workshop/plots/",
       dpi = 300,
       width = 2500, 
       height = 2500, 
       units = "px",
       device = "pdf")

gg_6_b <- gg_func_6_b() 
ggsave(filename = "gg_6_b.pdf",
       plot = gg_6_b,
       path = "C:/Users/chris/OneDrive/1PhD/R_workshop_AUH/R_workshop/plots/",
       dpi = 300,
       width = 2500, 
       height = 2500, 
       units = "px",
       device = "pdf")

gg_6_c <- gg_func_6_c() 
ggsave(filename = "gg_6_c.pdf",
       plot = gg_6_c,
       path = "C:/Users/chris/OneDrive/1PhD/R_workshop_AUH/R_workshop/plots/",
       dpi = 300,
       width = 2500, 
       height = 2500, 
       units = "px",
       device = "pdf")
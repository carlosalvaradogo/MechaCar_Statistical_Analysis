#1.3
library("dplyr")

#1.4
mecha_car_mpg <- read.csv(file='MechaCar_mpg.csv', check.names=F,stringsAsFactors = F)

#1.5
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_car_mpg)

#1.6
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_car_mpg))

#2.2
suspension_coil <- read.csv("Suspension_Coil.csv", check.names = F, stringsAsFactors = F)

#2.3
total_summary <- suspension_coil %>% 
  summarise(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

#2.4
lot_summary <- suspension_coil %>%
  group_by(Manufacturing_Lot) %>%
  summarise(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')

#3.1
t.test(suspension_coil$PSI, mu=1500)

#3.2

t.test(PSI ~ 1, mu=1500, data = suspension_coil, subset = Manufacturing_Lot == "Lot1")
t.test(PSI ~ 1, mu=1500, data = suspension_coil, subset = Manufacturing_Lot == "Lot2")
t.test(PSI ~ 1, mu=1500, data = suspension_coil, subset = Manufacturing_Lot == "Lot3")



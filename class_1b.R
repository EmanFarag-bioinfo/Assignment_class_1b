
dir.create("raw_data")
dir.create("clean_data")
dir.create("script")
dir.create("results")


#import csv file
data <- read.csv(file.choose())
View(data)

#check structure
str(data)

#convert smoker to a factor 
data$smoker_fac <- as.factor(data$smoker)
str(data)

#re-level factor 
data$smoker_fac <- factor(data$smoker_fac, levels = c("Yes", "No"))

levels(data$smoker_fac)

#convert factor into numeric factor
data$smoker_fac <- ifelse(data$smoker_fac == "Yes", 1, 0)
class(data$smoker_fac)

data$smoker_fac <- as.factor(data$smoker_fac)
class(data$smoker_fac)

write.csv(data, file = "results/patient_data.csv")


#convert gender to a factor

data$gender_fac <- as.factor(data$gender)
str(data)

#re-level factor 
data$gender_fac <- factor(data$gender_fac, levels = c("Female", "Male"))

levels(data$gender_fac)

#convert factor into numeric factor
data$gender_fac <- ifelse(data$gender_fac == "Female", 1, 0)

class(data$gender_fac)

#convert diagnosis to a factor

data$diagnosis_fac <- as.factor(data$diagnosis)
str(data)

#re-level factor 
data$diagnosis_fac <- factor(data$diagnosis_fac, levels = c("Normal", "Cancer"))

levels(data$gender_fac)


save.image(file = "Eman_Farag_Class_1b_assignment.RData")






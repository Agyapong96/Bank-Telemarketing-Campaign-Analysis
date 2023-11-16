#loading necessary libraries
library(tidyverse)
library(dlookr)
library(DataExplorer)
library(SmartEDA)
library(dplyr)
library(flextable)
library(data.table)
# Loading data
bank <- read.csv("bank-full.csv", header = TRUE, sep = ",")

dim(bank)
head(bank)

#Creating report with DataExplorer
create_report(bank)

# Eda report with dlookr
eda_paged_report(bank)

# Eda reort with SmartEDA
ExpReport(bank,op_file = "EDA Report for Bank.html",op_dir = getwd())

#plotting missing instances percentage
plot_missing(bank)

# Removing unwanted columns
new_bank <- subset(bank, select= -c(Poutcome,Month,Pdays,Day))
head(new_bank)


#

#Descriptive statistics of categorical variables
describe(new_bank)%>%flextable()

#plotting Histogram of categorical variables
plot_hist_numeric(new_bank)

#descriptive Statistics of outliers
diagnose_outlier(new_bank)%>%flextable()

#Checking for zero values percentage
res <- colSums(new_bank==0)/nrow(bank)*100
res


#creating an automated report with DataExplorer
create_report(new_bank)

#plotting correlation chart with DataExplorer
plot_correlation(na.omit(new_bank), maxcat = 0)


#Plotting the distribution of Categorical variables with smarteda
plot2 <- ExpCatViz(new_bank, target = NULL, col = "slateblue4",clim=10,margin=2,Page = c(2,2),sample = 7)
plot2[[1]]

#Scatter plot with dlookr
da <- compare_numeric(new_bank)
plot(da)

#bar graph of categorical variables
plot_bar_category(new_bank)

#bar graph for job
ggplot(data = new_bank) + geom_bar( mapping = aes(x = Job, fill = Job))



#checking the number and type of jobs
count(new_bank, select=Job)

#forming new subsets of the data based on the type of Jobs
admin <- new_bank[new_bank$Job %like% "admin", ]        # Extract matching rows with %like%
head(admin)

blue <- new_bank[new_bank$Job %like% "blue-collar", ]        # Extract matching rows with %like%
head(blue)

entre <- new_bank[new_bank$Job %like% "entrepreneur", ]        # Extract matching rows with %like%
head(entre)

house <- new_bank[new_bank$Job %like% "housemaid", ]        # Extract matching rows with %like%
head(house)

manage <- new_bank[new_bank$Job %like% "management", ]        # Extract matching rows with %like%
head(manage)

retired <- new_bank[new_bank$Job %like% "retired", ]        # Extract matching rows with %like%
head(retired)

self <- new_bank[new_bank$Job %like% "self-employed", ]        # Extract matching rows with %like%
head(self)

services <- new_bank[new_bank$Job %like% "services", ]        # Extract matching rows with %like%
head(services)

Student <- new_bank[new_bank$Job %like% "student", ]        # Extract matching rows with %like%
head(Student)

tech <- new_bank[new_bank$Job %like% "technician", ]        # Extract matching rows with %like%
head(tech)

unemployed <- new_bank[new_bank$Job %like% "unemployed", ]        # Extract matching rows with %like%
head(unemployed)

unknown <- new_bank[new_bank$Job %like% "unknown", ]        # Extract matching rows with %like%
head(unknown)

#plotting categorical distribution of new datasets with SmartEDA
plot1 <- ExpCatViz(admin, target = NULL, col = "slateblue4",clim=10,margin=2,Page = c(2,2),sample = 7)
plot1[[1]]

plot2 <- ExpCatViz(blue, target = NULL, col = "slateblue4",clim=10,margin=2,Page = c(2,2),sample = 7)
plot2[[1]]

plot3 <- ExpCatViz(entre, target = NULL, col = "slateblue4",clim=10,margin=2,Page = c(2,2),sample = 7)
plot3[[1]]

plot4 <- ExpCatViz(house, target = NULL, col = "slateblue4",clim=10,margin=2,Page = c(2,2),sample = 7)
plot4[[1]]

plot5 <- ExpCatViz(manage, target = NULL, col = "slateblue4",clim=10,margin=2,Page = c(2,2),sample = 7)
plot5[[1]]

plot6 <- ExpCatViz(retired, target = NULL, col = "slateblue4",clim=10,margin=2,Page = c(2,2),sample = 7)
plot6[[1]]

plot7 <- ExpCatViz(self, target = NULL, col = "slateblue4",clim=10,margin=2,Page = c(2,2),sample = 7)
plot7[[1]]

plot8 <- ExpCatViz(services, target = NULL, col = "slateblue4",clim=10,margin=2,Page = c(2,2),sample = 7)
plot8[[1]]

plot9 <- ExpCatViz(Student, target = NULL, col = "slateblue4",clim=10,margin=2,Page = c(2,2),sample = 7)
plot9[[1]]

plot10 <- ExpCatViz(tech, target = NULL, col = "slateblue4",clim=10,margin=2,Page = c(2,2),sample = 7)
plot10[[1]]

plot11 <- ExpCatViz(unemployed, target = NULL, col = "slateblue4",clim=10,margin=2,Page = c(2,2),sample = 7)
plot11[[1]]

plot12 <- ExpCatViz(unknown, target = NULL, col = "slateblue4",clim=10,margin=2,Page = c(2,2),sample = 8)
plot12[[1]]

# description of data based on jobs
describe(Student)%>%flextable()
describe(retired)%>%flextable()
describe(entre)%>%flextable()
describe(blue)%>%flextable()
describe(admin)%>%flextable()
describe(self)%>%flextable()
describe(house)%>%flextable()
describe(tech)%>%flextable()
describe(services)%>%flextable()
describe(manage)%>%flextable()
describe(unemployed)%>%flextable()



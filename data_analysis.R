library(readxl)
# importing the dataset
court_cases <- read_excel("C:/NISR/R TRAININGS/R SHINY COURSE/Crimes_status_project/Crimes_status/data/Cases_in_Court_2010 -2015.xlsx")
View(court_cases)

# court cases analysis
# number of cases by type over the years
## dropping the unneeded rows
rows_to_rm <- which(court_cases$`Type of Cases` == "General Total")

court_cases[-rows_to_rm, ] -> court_cases

## filling missing values in the year column
court_cases[]

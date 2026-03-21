# Importing Data

library(tidyverse)

#Download Data
# download.file(
#   "https://raw.githubusercontent.com/datacarpentry/r-socialsci/main/episodes/data/SAFI_clean.csv",
#   "data-raw/SAFI_clean.csv", mode = "wb"
# )

#You don't have to say the entire /s, just start where you re (already in importing.r for hist5444s26)

# 1. - find the path to the data
read_csv("data-raw/SAFI_clean.csv")

#Tab complete shows if it is written correctly

# 2. Potentially identify missing values

?read_csv

interviews <- read_csv("data-raw/SAFI_clean.csv",
         na = "NULL")

# 3. Change parsing of data types
# Check the parsing of data types

spec(interviews)
# Spec code shows how we got what we got

interviews <- read_csv("data-raw/SAFI_clean.csv", 
         na = "NULL",
         col_types = cols(
           key_ID = col_integer(),
           no_membrs = col_integer(),
           years_liv= col_integer(),
         ))

#read csv

read_csv("data-raw/readr-example.csv")          

#Write Out Data
write_csv(interviews, "data/interviews.csv")
# You don't need to write out every single time; it is reproduced when the code is ran

# Read it back in

interviews_new <- read_csv("data/interviews.csv")
interviews_new

#To remove a mispelt object, do rm(mispelt object)



praise::praise()

read_csv("data-raw/individuals.csv")

individuals <- read_csv("data-raw/individuals.csv",
                       na = "NULL")

write_csv(individuals, "data/individuals.csv")

individuals_new <- read_csv("data/individuals.csv")

read_csv("data-raw/families.csv")
associations <- read_csv("data-raw/families.csv",
                         na = "NULL")

write_csv(families, "data/families.csv")

families_new <- read_csv("data/families.csv")


read_csv("data-raw/occupations.csv")

occupations <- read_csv("data-raw/occupations.csv",
                        na = "NULL")

write_csv(occupations, "data/occupations.csv")

occupations_new <- read_csv("data/occupations.csv")


read_csv("data-raw/organizations.csv")

organizations <- read_csv("data-raw/organizations.csv",
                        na = "NULL")

families <- read_csv("data-raw/families.csv",
                          na = "NULL")

write_csv(occupations, "data/organizations.csv")

organizations_new <- read_csv("data/organizations.csv")

read_csv("data-raw/organizations-memberships.csv")

organizationsmemb <- read_csv("data-raw/organizations-memberships.csv",
                          na = "NULL")

write_csv(organizationsmemb, "data/organizations-memberships.csv")

organizationsmeb_new <- read_csv("data/organizations-memberships.csv")

ggplot(data = organizations)


career <- c("data/occupations.csv", "data/organizations.csv")
interrelationships <- c("data/families.csv", "data/associations.csv")


read_csv(career)

library(readxl)
library(tidyverse)
library(writexl)

ggplot(data = occupations, organizations,
      mapping = aes(x = occupation,
           y = sub_type)) +
  geom_point(aes(color = occupation, shape = sub_type),
             size = 3, alpha = 0.8, na.rm = TRUE) + 
  scale_color_manual(values = c("darkorange", "purple", "cyan4")) +
  labs(title = "Career vs Family",
       x = "Job",
       y = "Degree of Education",
       color = "Type",
       shape = "Type") +
  theme_bw()


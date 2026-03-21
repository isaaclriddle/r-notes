# Data Wrangling with dplyr

library(tidyverse)

interviews <- read_csv("data-raw/SAFI_clean.csv", 
                       na = "NULL",
                       col_types = cols(
                         key_ID = col_integer(),
                         no_membrs = col_integer(),
                         years_liv= col_integer(),
                       ))

glimpse(interviews) #turns data on side and highlights values, less clear rows

# Subset Data -------------------------------------------------------------
interviews |> #Ctrl + Shift + M
  select(village, no_membrs, years_liv) #  subsetting columns

#Alternatively
select(.data = interviews,village, no membrs, years liv)

# data = indicates which one the data is

# .data is a data frame, data frame extension (tibble) or a lazy day frame.

interviews |>
  select(village:liv_count)

# Removing a colon

interviews |>
  filter(no_membrs == 1)

# ! before object or label in function means 'don't select that'
# testing equality is ==
# mutate function creates new column


interviews |>
  select(village, no_membrs:rooms) |> #subset columns
  filter(rooms > 1, rooms < 5 & village == "God") |> #subset rows - "i want all people who are this or aren't this or did this."
  mutate(people_per_room = no_membrs / rooms) #creates new columns

interviews |>
  select(village, no_membrs:rooms) |> #subset columns
  filter(rooms > 1, rooms < 5 & village == "God") |>
  select(!village) |>
  mutate(people_per_room = no_membrs / rooms)

# ^^ order doesn't matter, just be mindful of when you make or get rid of columns

# ! = not

# mutate is to make a new column

# you can highlight part of a line oto only run part of a line (don't include pipe or plus)

# == is testing equality, not stating it

glimpse(interviews)

library(nycflights)

install.packages("nycflights13")

interviews_chirodzo <- interviews |>
    filter(rooms > 1, rooms < 5, village == "Chirodzo") |>
    select(no_membrs:rooms)

interviews_chirodzo |>
    mutate(people_per_room = no_membrs / rooms) |>
    group_by(respondent_wall_type) |>
    summarise(avg_per_room = mean (people_per_room))

interviews |>
  group_by(village, respondent_wall_type) |>
  summarize(avg_per_room = mean(no_membrs / rooms),
              count = n (),
              .groups = "drop") |>
  arrange(desc(avg_per_room))

interviews |>
    separate_longer_delim(items_owned, delim = ";") |>
    group_by(key_ID) |>
    summarize(total_items = n())
# ^^ gives number of items divided by each household

items_owned <- interviews |>
  separate_longer_delim(items_owned, delim = ";") |>
  group_by(key_ID) |>
  summarize(total_items = n())

  left_join(items_owned, interviews, by = "key_ID")
# ^ breaking down data into different chunks and bringing them together; adding a row or column that you can't see
  
# left join takes everything on the left, and everything that matches it on the right

# delim created a new row for every single one

#  rename(no_members = no_membrs) renames a column

# a pipe always needs to be preceded by a closing parenthesis and followed by nothing on the same line
    
# why do all arguments begin with a dot? because the dot says not to start a column name; column names can't start with a dot


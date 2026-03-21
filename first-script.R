#Digital History Methods
2+2
#Control + Enter to run / Script is to save
x <- 2
library(tidyverse)
# dplyr:: (filter) vs stats::filter()
penguins
penguings <- penguins
ggplot(data = penguins)
ggplot(data = penguins,
       mapping = aes(x = flipper_len, y = body_mass))
ggplot(data = penguins,
       mapping = aes(x = flipper_len, y = body_mass)) + 
  geom_point()
ggplot(data = penguins,
       mapping = aes(x = flipper_len, y = body_mass)) + 
  geom_point(mapping = aes(color = species, shape = species))
ggplot(data = penguins,
       mapping = aes(x = flipper_len, y = body_mass)) + 
  geom_point(mapping = aes(color = species, shape = species),
             size = 3, alpha = 0.8, na.rm = TRUE)
#set global aesthetics in ggplot() function. if you make another genome you have to set another x/y, so its better to set x and y first within the relevant geom
# alpha is transparency of an item
#na.rm deletes missing data
#don't set a color to a constant in the aes(.) function -> it maps it as a new variable. outside of the aes() function it would work
# any time you add on a new layer, do a + at the end of the line
ggplot(data = penguins,
       mapping = aes(x = flipper_len, y = body_mass)) + 
  geom_point(mapping = aes(color = species, shape = species),
             size = 3, alpha = 0.8, na.rm = TRUE) +
  scale_color_brewer(palette = "Set1")
  
ggplot(data = penguins,
        mapping = aes(x = flipper_len, y = body_mass)) + 
    geom_point(mapping = aes(color = species, shape = species),
               size = 3, alpha = 0.8, na.rm = TRUE) + 
    scale_color_manual(values = c("darkorange", "purple", "cyan1"))

ggplot(data = penguins, 
       aes(x = flipper_len,
           y = body_mass)) +
  geom_point(aes(color = species, shape = species),
             size = 3, alpha = 0.8, na.rm = TRUE) + 
  scale_color_manual(values = c("darkorange", "purple", "cyan4")) +
  labs(title = "Penguin size, Palmer Station LTER",
       x = "Flipper length (mm)",
       y = "Body mass (g)",
       color = "Penguin species",
       shape = "Penguin species") +
  theme_bw()
# esc = escape
ggplot(data = penguins, 
       aes(x = flipper_len,
           y = body_mass)) +
  geom_point(aes(color = species, shape = species),
             size = 3, alpha = 0.8, na.rm = TRUE) + 
  scale_color_manual(values = c("darkorange", "purple", "cyan4")) +
  labs(title = "Penguin size, Palmer Station LTER",
       x = "Flipper length (mm)",
       y = "Body mass (g)",
       color = "Penguin species",
       shape = "Penguin species") +
  theme_bw()
penguins
ggplot(data = penguins)
library(tidyverse)
penguins
ggplot(data = penguins)
ggplot(data = penguins, 
       aes(x = flipper_len,
           y = body_mass)) +
  geom_point(aes(color = species, shape = species),
             size = 3, alpha = 0.8, na.rm = TRUE) + 
  scale_color_manual(values = c("darkorange", "purple", "cyan4")) +
  labs(title = "Penguin size, Palmer Station LTER",
       x = "Flipper length (mm)",
       y = "Body mass (g)",
       color = "Penguin species",
       shape = "Penguin species") +
  theme_bw()
penguins
ggplot(data = penguins, 
       aes(x = flipper_len,
           y = body_mass)) +
  geom_point(aes(color = species, shape = species),
             size = 3, alpha = 0.8, na.rm = TRUE) + 
  scale_color_manual(values = c("darkorange", "purple", "cyan4")) +
  labs(title = "Penguin size, Palmer Station LTER",
       x = "Flipper length (mm)",
       y = "Body mass (g)",
       color = "Penguin species",
       shape = "Penguin species") +
  theme_bw()
library(tidyverse)
ggplot(data = penguins, 
       aes(x = flipper_len,
           y = body_mass)) +
  geom_point(aes(color = species, shape = species),
             size = 3, alpha = 0.8, na.rm = TRUE) + 
  scale_color_manual(values = c("darkorange", "purple", "cyan4")) +
  labs(title = "Penguin size, Palmer Station LTER",
       x = "Flipper length (mm)",
       y = "Body mass (g)",
       color = "Penguin species",
       shape = "Penguin species") +
  theme_bw()
update.packages()
df <- tibble(first_column = 1:4,
       second_column = letters[1:4])
letters
#C function - [c(xyz)] - is creating a vector
# Source runs everything
# Rscript tends to be easier than Quarto, but if you actual output, you need Quarto (can but don't have to have code)

#library
library(tidyverse)
library(skimr)
library(GGally)

# Load the dataset
crops <- read.csv("/path/to/your/crops.csv")

# 2. Understanding the Structure

# View the structure of the dataset
str(crops)

# View the first few rows
head(crops)

# 3. Summary Statistics

# Summary statistics
summary(crops)

# Detailed summary using skimr
skim(crops)

# 4. Missing Values

# Check for missing values
missing_values <- sapply(crops, function(x) sum(is.na(x)))
missing_values

# 5. Data Visualization

# Histogram for a numeric variable

# 5. Data Visualization

# Histogram for a numeric variable
ggplot(crops, aes(x =WHEATYIELD )) + 
  geom_histogram(binwidth = 10, fill = "brown", color = "black") +
  theme_minimal()

# Histogram for a numeric variable
ggplot(crops, aes(x =MAIZEYIELD)) + 
  geom_histogram(binwidth = 10, fill = "red", color = "black") +
  theme_minimal()

# Histogram for a numeric variable
ggplot(crops, aes(x =MILLETYIELD)) + 
  geom_histogram(binwidth = 10, fill = "pink", color = "blue") +
  theme_minimal()

# Boxplot for a numeric variable grouped by a categorical variable
ggplot(crops, aes(x = Year, y = RICEYIELD)) + 
  geom_boxplot(fill = "orange", color = "black") +
  theme_minimal()

# Boxplot for a numeric variable grouped by a categorical variable
ggplot(crops, aes(x = StateName, y = RICEYIELD)) + 
  geom_boxplot(fill = "purple", color = "pink") +
  theme_minimal()

# Boxplot for a numeric variable grouped by a categorical variable
ggplot(crops, aes(x = DistName, y = WHEATYIELD)) + 
  geom_boxplot(fill = "red", color = "black") +
  theme_minimal()

# Scatter plot to visualize relationships between two numeric variables
ggplot(crops, aes(x =RICEAREA, y = RICEYIELD)) + 
  geom_point(color = "blue") +
  theme_minimal()

# Scatter plot to visualize relationships between two numeric variables
ggplot(crops, aes(x = WHEATAREA, y =WHEATYIELD)) + 
  geom_point(color = "red") +
  theme_minimal()
# Pair plot for multiple numeric variables
ggpairs(crops[, c("RICEAREA", "RICEPRODUCTION", "RICEYIELD")])

# Pair plot for multiple numeric variables
ggpairs(crops[, c("WHEATAREA", "WHEATPRODUCTION", "WHEATYIELD")])

b# Save plots
ggsave("histogram.png")
ggsave("boxplot.png")
ggsave("scatter_plot.png")
ggsave("bar_plot.png")
ggsave("pair.png")



# DV Lab – Week 03A
# Name: Niharika Yemmireddy
# Roll No: 23A91A6165

# Load the dataset
data(iris)

# Inspect the Data
?iris          # Opens help file for iris dataset
head(iris, 3)  # First 3 rows
str(iris)      # Structure of dataset
class(iris)    # Class of iris

# View the Species column
iris$Species
View(iris)

# Basic bar chart: Count of each species
barplot(
  table(iris$Species)
)

# Labeled bar chart
barplot(
  table(iris$Species),
  main = "Count of Iris Species",
  xlab = "Species",
  ylab = "Number of Items",
  col = "steelblue"
)

# Bar chart from aggregated data: Mean Sepal Length per species
mean_sepal <- tapply(iris$Sepal.Length, iris$Species, mean)
mean_sepal

barplot(
  mean_sepal,
  main = "Average Sepal Length by Species",
  xlab = "Species",
  ylab = "Mean Sepal Length",
  col = "lightgreen"
)

# Grouped Bar chart: Compare Sepal & Petal Length (mean)
group_means <- rbind(
  Sepal = tapply(iris$Sepal.Length, iris$Species, mean),
  Petal = tapply(iris$Petal.Length, iris$Species, mean)
)
group_means

# Grouped (Clustered) bar chart
barplot(
  group_means,
  beside = TRUE,
  col = c("skyblue", "pink"),
  legend.text = rownames(group_means),
  main = "Clustered Bar Chart: Sepal vs Petal Length"
)

# Grouped (Stacked) bar chart
barplot(
  group_means,
  beside = FALSE,
  col = c("skyblue", "pink"),
  legend.text = rownames(group_means),
  main = "Stacked Bar Chart: Sepal vs Petal Length"
)

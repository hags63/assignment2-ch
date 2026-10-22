# penguins_analysis.R
# Author: Connor Hagness
# Purpose: Load the penguins data set and run two descriptive analyses.
# Output: summary_statistics.csv and species_summary.csv

# ---- 1. Load the data ----
penguins <- read.csv("penguins.csv")

# Take a quick look at the data (prints to the console)
str(penguins)
head(penguins)

# ---- 2. Analysis 1: Summary statistics for the numeric variables ----
numeric_vars <- c("bill_length_mm", "bill_depth_mm",
                  "flipper_length_mm", "body_mass_g")

summary_stats <- data.frame(
  variable = numeric_vars,
  n    = sapply(penguins[numeric_vars], function(x) sum(!is.na(x))),
  mean = round(sapply(penguins[numeric_vars], mean, na.rm = TRUE), 2),
  sd   = round(sapply(penguins[numeric_vars], sd,   na.rm = TRUE), 2),
  min  = sapply(penguins[numeric_vars], min, na.rm = TRUE),
  max  = sapply(penguins[numeric_vars], max, na.rm = TRUE)
)
print(summary_stats)

# ---- 3. Analysis 2: Count and average body mass by species ----
species_count <- as.data.frame(table(penguins$species))
names(species_count) <- c("species", "count")

species_mass <- aggregate(body_mass_g ~ species, data = penguins, FUN = mean)
species_mass$body_mass_g <- round(species_mass$body_mass_g, 1)
names(species_mass) <- c("species", "avg_body_mass_g")

species_summary <- merge(species_count, species_mass, by = "species")
print(species_summary)

# ---- 4. Save the output ----
write.csv(summary_stats,   "summary_statistics.csv", row.names = FALSE)
write.csv(species_summary, "species_summary.csv",    row.names = FALSE)


# ---- 5. Analysis 3: Regression ----
# Does flipper length predict body mass?
model <- lm(body_mass_g ~ flipper_length_mm, data = penguins)
summary(model)

# Save the regression results to a text file
capture.output(summary(model), file = "regression_results.txt")

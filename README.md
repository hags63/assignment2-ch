# assignment2-ch

Assignment 2 for QAC 380 by Connor Hagness.

## Data
I used penguins.csv, which has data on 344 penguins from three species (Adelie, Chinstrap, and Gentoo). It includes species, island, bill length, bill depth, flipper length, body mass, sex, and year. A few rows have missing values.

## Files
- penguins.csv - the data
- penguins_analysis.R - my R script
- summary_statistics.csv - summary stats output
- species_summary.csv - species counts and average body mass
- regression_results.txt - regression output

## What the script does
penguins_analysis.R loads the data and:
1. Calculates the mean, standard deviation, min, and max for bill length, bill depth, flipper length, and body mass
2. Counts the penguins in each species and finds each species' average body mass
3. Runs a regression of body mass on flipper length

The results are saved to the output files listed above.

My teammate also added a few analyses to the script through a pull request (a summary of the data, the mean bill depth, and histograms of body mass and bill length).

## How to reproduce
1. Install R and RStudio
2. Clone this repository
3. Open penguins_analysis.R in RStudio
4. Set the working directory to the repository folder (Session > Set Working Directory > To Source File Location)
5. Click Source to run the script
# assignment2-ch
Assignment 2 for QAC 380

Author: Connor Hagness

## Dataset
`penguins.csv` contains body measurements for three penguin species (Adelie, Chinstrap, and Gentoo) observed on islands in the Palmer Archipelago, Antarctica. It has 344 rows (one per penguin) and 8 variables: species, island, bill length (mm), bill depth (mm), flipper length (mm), body mass (g), sex, and year. Some values are missing.

## Files
- `penguins.csv`: the raw data set
- `penguins_analysis.R`: the R script that runs the analysis
- `summary_statistics.csv`: output from Analysis 1
- `species_summary.csv`: output from Analysis 2

## What the script does
`penguins_analysis.R` loads `penguins.csv` and runs two descriptive analyses:
1. **Summary statistics** (n, mean, standard deviation, min, max) for bill length, bill depth, flipper length, and body mass. Missing values are excluded.
2. **Species summary**: the number of penguins per species and each species' average body mass.

Both results are saved as CSV files in this folder.

## How to reproduce the analysis
1. Install R (https://cran.r-project.org) and RStudio (https://posit.co/download/rstudio-desktop). No extra packages are needed.
2. Clone or download this repository.
3. Open `penguins_analysis.R` in RStudio.
4. Set the working directory to the repository folder: Session → Set Working Directory → To Source File Location.
5. Click **Source** to run the script. `summary_statistics.csv` and `species_summary.csv` will be created in the repository folder.


## Analysis 3: Regression
The script also runs a linear regression of body mass on flipper length. The results are saved to `regression_results.txt`.

## Collaborator additions (jane-branch)
A teammate added descriptive analyses to `penguins_analysis.R` through a pull request: a summary of the full data set, the mean bill depth, and histograms of body mass and bill length.
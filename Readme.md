# Getting and Cleaning Data Course Project

This repository contains the submission for the Coursera "Getting and Cleaning Data" course project.

## Files
- `run_analysis.R`: R script that processes the UCI HAR Dataset.
- `tidy_data.txt`: Final tidy dataset (averages per subject/activity).
- `CodeBook.md`: Describes variables, data, and transformations.
- `README.md`: This file.

## How to Run
1. Download the dataset from:  
   https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
2. Unzip it in your working directory.
3. Place `run_analysis.R` in the same folder as the UCI HAR Dataset folder.
4. Source the script in RStudio: `source("run_analysis.R")`
5. Output `tidy_data.txt` will be created.
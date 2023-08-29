# EXPLORATORY & DESCRIPTIVE ANALYSES

## **LOAD LIBRARIES**

```{r}
library(gtsummary) 
#For creating publication ready tables

library(flextable) 
#Supplement to the `gtsummary` package to print the tables

library(ggpubr) 
#For creating publication ready plots
```

## **ATTACH DATA**

```{r}
df <- datasets::mtcars 
#Store the `mtcars` dataset in an object: `df`

attach(df) 
#Easy accessibility to variables in the dataset

View(df) 
#View the dataset

?mtcars 
#Help function to get an overview
```

## **DESCRIPTIVE ANALYSIS**

```{r}
table1 <- tbl_summary(df) 
#Store the table in an object: `table1`

table1 
#Call the table

table2 <- tbl_summary(df, by = "am") 
#Group the table on factor `am`

table2 
#Call the table

table3 <- tbl_summary(df, by = "am", 
                      statistic = list(all_continuous() ~ 
                                         "{mean} ({sd})"))
#Get means and standard deviations for continuous variables

table3
#Call the table
```

## PLOTS

```{r}
gghistogram(data = df, x = "mpg", bins = 10)
#Get a histogram for `mpg` distribution

ggboxplot(data = df, x = "am", y = "mpg")
#Get boxplots for `mpg` by factor `am`

ggscatter(data = df, x = "disp", y = "mpg", 
          add = "reg.line", conf.int = T)
#Get a scatterplot of raw data points with a best fit line with 95% confidence intervals
```

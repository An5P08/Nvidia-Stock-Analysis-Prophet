---
title: "MTH6139 Time Series"
subtitle: "Coursework 1"
author: "Ansh Patel"
date: "Spring term 2025"
output:
  html_document:
    toc: true
    toc_float: true
    theme: spacelab
    highlight: tango
---


```{r, echo=FALSE}
# This code will display the QMUL logo at the top right of the page
# Do not change this code
htmltools::img(src = knitr::image_uri("images/QMlogo.png"),
               alt = 'logo',X
               style = 'position:absolute; top:0; right:0; padding:10px; width:20%;')
```

# Section 1: This is the first section
This is a template for your weekly work. You can write text, include images, write equations, and include R code. The text below is provided just for demonstration, you can save it elsewhere and replace by your work.

## 1.1 Meta's Prophet forecasting system
install.packages("prophet")
install.packages("remotes")
install.packages("astsa")
remotes::install_github('facebook/prophet@*release', subdir='R')
library(prophet)
install.packages("quantmod")
library(quantmod)
# because NVDA is simply the name of the object created by getSymbols()—it isn’t an R package or function.
getSymbols("NVDA", src = "yahoo", from = "2020-01-01", to = "2024-12-31")


nvda_df <- data.frame(
    ds = as.Date(nvda_df$Date),   # Convert your date column to Date if needed
    y  = nvda_df$Close            # Use the numeric column for y
)






## 1.2 The second  subsection
You can write R code online as follows `{r}x <- 1:10`. This is called *inline code*. You can also write code in a separate block as follows:

    ```{r}
# ENSO is a time series related to the
# El Nino effect weather pattern in the South Pacific
# run ?astsa::ENSO for more information
library(astsa)
start(ENSO)
end(ENSO)
frequency(ENSO)
```
This is called a *code chunk*.

If you want to hide the code, just add `echo=FALSE` in the chunk options.
```{r echo=FALSE}
library(astsa)
start(ENSO)
end(ENSO)
frequency(ENSO)
```

## 3) Forecasting Analysis
install.packages("plotly")




\`\`\`{r}

code here

\`\`\`

## 1.4 Callout blocks

> <font size="5">📘</font> **Callout blocks**
    >
    > You can typeset callout blocks
> by writing text after the `>` character.
>
    > You can also add emojis to make it look nice.

> <font size="5">⚠️</font> **Important**
    >
    > Your RMarkdown file should not include R instructions such as:
    >
    > - `install.packages("...")`, or
> - `help(...)` or `?...`,
> - `data()` or `data(package="...")`,
> - `View(...)`,
> - Or any other instruction that displays data in a separate window or requires user input.
>
    > as they are not suitable for an HTML document.
>
    > Run them in the console as part of your development. But not in the RMarkdown document.

# Section 2: This is the second section

## 2.1 Including image files

library(astsa)
You can include images with `![](images/QMlogo.png)`

![](images/QMlogo.png)


## 2.2 Including hyperlinks
You can write an URL by surrounding it by `<` and `>`, this will render like this: <https://www.qmul.ac.uk>

    You can also hyperlink text to a URL using `[text](url)`.
For example:  `[Click here to go to the QMUL website](https://www.qmul.ac.uk)` results in


[Click here to go to the QMUL website](https://www.qmul.ac.uk)


## 2.2 Displaying plots
You can also display plots. For example, the code below will display a plot of the ENSO data.
```{r}
plot(ENSO)
```

## 2.3 Writing equations
In the course we will not use this much, but in case you want, you can also write equations using $\LaTeX$. For example, the equation of a straight line is $y = mx + b$.
$$
    z=\frac{1}{\sqrt{2\pi}}e^{-\frac{1}{2}x^2}
$$
    etc.


# References

- Datacamp course: <https://www.datacamp.com/courses/reporting-with-rmarkdown>
    - RStudio reference: <https://rmarkdown.rstudio.com/lesson-1.html>
    - More sophisticated reference: <https://bookdown.org/yihui/rmarkdown/>
























































#' ---
#' title: Time Series Week NNN
#' author: You
#' date: Today
#' ---

# 1. R Scratchpad ------------------------------------------------------------
#   You will only write in R Markdown for code and results
#   that are more or less finalised.
#   In the meantime, you can use this R scratchpad.
#   Delete all this text and write your own code
#   Don't forget to add explanatory comments
#   And to separate out different bits with headings or
#   subheadings

# 2. Use Sectioning ----------------------------------------------------------
#   Comment lines start with #, they are not read by R
#   If you end comment lines with space and four minus signs -
#   they will be interpreted as section headings.
#   You can add more - to visually separate sections.
#   CTRL+SHIFT+R / ⌘+SHIFT+R creates a new section and adds the hyphens.
#
#   These sections are accessible in
#     - the drop-down list on the bottom left of the scripting area,
#       ALT+SHIFT+J / ⌘+SHIFT+J brings it up
#   and
#     - the outline section on the top-right corner of the scripting area
#       CTRL+SHIFT+O / ⌘+SHIFT+O brings it up

## 2.1 Subsection -----------------------------------
#   You can also have subsections
#   RStudio does not treat them differently from sections
#   but if you add a extra #, number or spaces they will look
#   different in the outline section.
#   This makes it easier to navigate your R file
#   I use less hyphens for subsections to help visually

### 2.1.1 Subsection -------------------
#   And sub-subsections,...

# 3. Folding sections -----------------------------------------------------
#   You can fold sections by clicking on the little grey down-arrow on the left
#   of the section heading. Or hitting ALT+L/⌘+ALT+L
#   This is useful to hide sections you are not working on
#   SHIFT+ALT+L / ⌘+SHIFT+⌥+L unfolds the section
#   ALT+O / ⌘+⌥+O folds all sections
#   SHIFT+ALT+O / ⌘+SHIFT+⌥+O unfolds all sections

# 4. Etiquette ------------------------------------------------------------
#   It is a good idea (valued in any business environment) to have a certain
#   etiquette when writing code (or anything else really).
#   For instance, I write a blank line before a section heading and not after
#   You can choose your own style, but be consistent, and have the least
#   amount of random variations in your style as possible.


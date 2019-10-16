# Class Meeting 003

## Files
* [`navigating_github.html`](https://dy-lin.github.io/STAT545-participation/cm003/navigating_github.html)
* [`rmd_exploration.html`](https://dy-lin.github.io/STAT545-participation/cm003/rmd_exploration.html)
* [`rmd_exploration-slides.html`](https://dy-lin.github.io/STAT545-participation/cm003/rmd_exploration-slides.html)

## Checklist
- [x] Populate `navigating_github.md` document with some markdown features
- [x] Convert the `.md` file into both `pdf` and `html` and add them to your repo
- [x] Upload `rmd_exploration.Rmd` and its output formats (`md`, `pdf` and `html`)
- [x] Upload `rmd_exploration-slides.Rmd` both as `Rmd` and `html` (or `pdf`) formats

## Instructions
These instructions were taken from the Class Meeting 03 [section](https://stat545guidebook.netlify.com/authoring.html) of the guide.

### Activty: Modfiy [`navigating_github.md`](https://github.com/dy-lin/STAT545-participation/blob/master/cm001/navigating_github.md)
Together:

1. Open your [`navigating_github.md`](https://github.com/dy-lin/STAT545-participation/blob/master/cm001/navigating_github.md) file that we made in the first class.
1. Mark up the text with some markdown features.
1. Commit your changes.

### Activity: Render [`navigating_github.md`](https://github.com/dy-lin/STAT545-participation/blob/master/cm001/navigating_github.md)
Together:
1. Download the contents of your GitHub participation repository as a zip file.
1. In RStudio, open the file [`navigating_github.md`](https://github.com/dy-lin/STAT545-participation/blob/master/cm001/navigating_github.md).
1. Convert the `.md` file to both pdf and html by clicking the appropriate button under the “Preview” tab.
1. Push the two new files to GitHub (by dragging and dropping the files onto your participation repo).

### Activity: getting set up with R packages

Together:

1. To install these packages, in any R console, run the following:
    ```
    install.packages('rmarkdown')
    install.packages('gapminder')
    install.packages('tibble')
    install.packages('DT')
    ```
1. Check out vignettes for the tibble package by running `browseVignettes(package = "rmarkdown")`.

### Activity: exploring code chunks
Together:
1. Open RStudio’s Rmd boilerplate by going to “File” -> “New File” -> “R Markdown” in RStudio. Explore!
1. Scrap everything below the YAML header.
1. Add a code chunk below the YAML header via “Insert” -> “R”. Or, by:
    * Mac: `Cmd + Option` + I`
    * Windows: `Ctrl + Alt + I`
1. Load the `gapminder` and `tibble` packages using the `library()` function, by adding the following code to your code chunk:
    ```
    library(gapminder)
    library(tibble)
    library(DT)
    ```
1. Print out the `gapminder` data frame to explore the output. Then, in a new code chunk, convert the `mtcars` data frame to a tibble using the `tibble::as_tibble()` function. Try out the `DT::datatable()` function on a data frame!
1. Add some markdown commentary to this comparative analysis.
1. Add an in-line code chunk specifying the number of rows of the `mtcars` dataset.
1. “Knit” to html and pdf.

### Activity: exploring the YAML header

Together, in an Rmd file (ideally the one from the previous exercise):

1. Change the output to `html_document`. We’ll be specifying settings for the html document, so this needs to go on a new line after the `output:` field:
    ```
    output:
        html_document:
            SETTINGS
            GO
            HERE
    ```
1. Add the following settings:
    * Keep the `md` intermediate file with `keep_md: true`
    * Add a theme. My favourite is cerulean: `theme: cerulean`
    * Add a table of contents with `toc: true`
    * Make the toc float: `toc_float: true`.
1. Knit the results (you may have to delete the pdf, because it is no longer up to date!)

### Activity: exploring chunk options

Together, in an Rmd file (ideally the same one we’ve been working on):

1. Hide the code from the output with `echo = FALSE`.
1. Prevent warnings from the chunk that loads packages with `warning = FALSE`.
1. Knit the results.

### Activity: exploring ioslides 
Together:
1. In RStudio, go to “File” -> “New File” -> “R Markdown” -> “Presentation” -> “ioslides”. Explore!
1. Clear everything below the YAML header.
1. Copy and paste the tibble exploration we’ve been working on (without the YAML header), and turn them into slides.

### Wrap-up

Push the following files to your GitHub repo:
1. [`navigating_github.md`](https://github.com/dy-lin/STAT545-participation/blob/master/cm001/navigating_github.md) and its output formats.
1. The Rmd exploration and its output formats.
1. The Rmd presentation slides exploration and its output formats.

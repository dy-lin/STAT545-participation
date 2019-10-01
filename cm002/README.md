# Class Meeting 02

## Instructions

### Using R and RStudio

Let’s try these exercises as our first steps.

1. Try some arithmetic from a script vs. the console.
    * Notice that your commands appear in the “History” tab. Do not rely on this! What do you think is better than relying on the history?
1. Store a number in a variable called number using <- (read this arrow as “gets”).
    * Notice that the object appears in the “Environment” tab in the top-right of RStudio.
1. Try some arithmetic on the variable.
1. Try some arithmetic on an undefined variable.
1. Try some arithmetic on the variable on a line of code above the variable definition (do you think we’ll get an error?)

### Vectors

Vectors store multiple entries of a data type, like numbers. You’ll discover that they show up just about everywhere in R.

Let’s collect some data and store this in a vector called `times`. How long was your commute this morning, in minutes? Here’s starter code:
```
times <- c()
```
Operations happen component-wise. Let’s calculate those times in hours. How can we “save” the results?

### Functions, Part I

What’s the average travel time? Instead of computing this manually, let’s use a _function_ called `mean`. Notice the syntax of using a function: the _input_ goes inside brackets, which is followed by the function name to the left.

We _input_ `times`, and got some _output_. Did this function change the input? Aside from some bizarre functions, this is always the case. Functions don’t always return a single value. Try the `range()` function, for example. What’s the output? What about the `sqrt()` function?

### Comparisons

We’ll now introduce logicals.

Which of our travel times are less than (say) 30 minutes? Use `<`.

Which of our travel times are equal to … (pick something)? What about not equal to it? Notice the use of `==` as opposed to `=` – why do you think that is?

Which of our travel times are greater than …(lower)… and less than …(upper)…? What about less than …(lower)… or greater than …(upper)…?

Some functions expect logical inputs. Try using the `which()` function on one of the above. What about `any()`? `all()`?

Logicals can be explicitly specified in R with `TRUE` and `FALSE`.

### Subsetting
Use `[]` to subset the vector of times:

1. Extract the third entry.
1. Extract everything except the third entry.
1. Extract the second and fourth entry. The fourth and second entry.
1. Extract the second through fifth entry – make use of `:` to construct sequential vectors.
1. Extract all entries that are less than 30 minutes. Why does this work? Logical subsetting!

After all of that, did our `times` object change at all?

We can use `[]` in conjunction with `<-` to change the `times` object:

1. Replace two entries with new travel times.
1. “Cap” entries that are “too large” at some set value. If this is more than one value, why don’t we need to match the number of values? Recycling!
1. Remove an entry, by overwriting `times`.

### NA

Sometimes we have missing data. Those entries are replaced with `NA` in R. Be careful with these!

1. Add `NA` to the vector of times.
1. What’s the mean of this new vector of times?

Let’s expand our view of functions in order to solve this problem.

### Functions, Part II

Functions often take more than one _arguments_ as input, separated by commas. You can find out what these arguments are by accessing the function’s _documentation_:

Access the documentation of the `mean()` function by executing `?mean`.
* There are four arguments.
All the arguments have names, except for the `...` argument (more on `...` later). This is always the case.
* Under “Usage”, some of the arguments are of the form `name = value`.
    * These are default values, in case you don’t specify these arguments.
    * This is a sure sign that these arguments are _optional_.
* `x` is “on its own”. This typically means that it has no default, and often (but not always) means that the argument is _required_.

We can specify an argument in one of two ways:

* specifying `argument name = value` in the function parentheses; or
* matching the ordering of the input with the ordering of the arguments.
    * For readability, this is not recommended beyond the first or sometimes second argument!
    
Input `TRUE` for the `na.rm` argument in both ways.

### Data frames 
Living in a vector-only world would be nice if all data analyses involved one variable. When we have more than one variable, data _frames_ come to the rescue. Basically, a data frame holds data in tabular format.

R has some data frames “built in”. For example, motor car data is attached to the variable name `mtcars`.

Print `mtcars` to screen. Notice the tabular format.

**Your turn** (5 min): Finish the exercises of this section:

1. Use some of these built-in R functions to explore `mtcars`, without printing the whole thing to screen:
    * `head()`, `tail()`, `str()`, `nrow()`, `ncol()`, `summary()`, `row.names()`, `names()`.
1. What’s the first column name in the `mtcars` dataset?
1. Which column number is named `"wt"`?
1. Extract the vector of `mpg` values. What’s the mean `mpg` of all cars in the dataset?

### R packages

Run the following lines of code to install the `tibble` and `gapminder` packages. (But don’t include this in your scripts – it’s not very nice to others!)
```
install.packages("tibble")
install.packages("gapminder")
```
* `tibble`: a data frame with some useful “bells and whistles”
* `gapminder`: a package that makes the gapminder dataset available (as a `tibble`!)

Run the following lines of code to load the packages. (Do put these in your scripts, and near the top)
```
library(tibble)
library(gapminder)
```

Try the following two approaches to access information about the `tibble` package. Run the lines one-at-a-time. Vignettes are your friend, but do not always exist.
```
?tibble
browseVignettes(package = "tibble")
```

Print out the `gapminder` object to screen. It’s a tibble – how does it differ from a data frame in terms of how it’s printed?

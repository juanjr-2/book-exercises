# load relevant libraries
library("httr")
library("jsonlite")

# Be sure and check the README.md for complete instructions!


# Use `source()` to load your API key variable from the `apikey.R` file you made.
# Make sure you've set your working directory!
source("apikey.R")
# Create a variable `movie_name` that is the name of a movie of your choice.
query_param <- list("api-key" = nyt_key)
# Construct an HTTP request to search for reviews for the given movie.
# The base URI is `https://api.nytimes.com/svc/movies/v2/`
# The resource is `reviews/search.json`
# See the interactive console for parameter details:
#   https://developer.nytimes.com/movie_reviews_v2.json
#
# You should use YOUR api key (as the `api-key` parameter)
# and your `movie_name` variable as the search query!
base_uri <- "https://api.nytimes.com/svc/movies/v2/"
endpoint <- "reviews/search.json"
uri <- paste0(base_uri, endpoint)

movie_name = "parasite"

query_param <-list("api-key" = nyt_key)
query_param_list <-list("api-key" = nyt_key, "movie_name" = movie_name)

3# Send the HTTP Request to download the data
# Extract the content and convert it from JSON
response <- GET(uri, query = query_param_list)
body <- content(response, "text")
data <- fromJSON(content(response, "text"))

# What kind of data structure did this produce? A data frame? A list?
View(data)
is.data.frame(data)
# Manually inspect the returned data and identify the content of interest 
# (which are the movie reviews).
# Use functions such as `names()`, `str()`, etc.


# Flatten the movie reviews content into a data structure called `reviews`


# From the most recent review, store the headline, short summary, and link to
# the full article, each in their own variables


# Create a list of the three pieces of information from above. 
# Print out the list.

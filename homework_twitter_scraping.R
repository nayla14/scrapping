# Title     : Twitter API Scraping Homework
# Objective : To Scrap Twitter with API

# Step 1: load rtweet package
library(rtweet)

# Step 2: API Authorization 
# With access token / secret
token <- create_token(
  consumer_key = "ub8ZPTTgh62PqzWEn0IvFP3KQ",
  consumer_secret = "TKc16mP9mU3dypIULX7Ajc3nkRMFNWwvyqsGtCfdP5eJwwWAeB",
  access_token = "1163631043359858688-ZWQvxtPzgSIZcNWMFAb06TwATjg0BM",
  access_secret = "kYNGbIRY7DpSq1aFdBXHgu0eBaGMODtNTRxVIHX6CRVgv")

# Step 3: Crawling Data Twitter 
# Define your twitter username 
my_username='naylaazmi'

# find 1000 tweets with keywords: "kkndidesapenari"
tweet <- search_tweets(q = "#kkndidesapenari", n = 1000)


# to know the column names of tweet 
colnames(tweet)
dim(tweet)

# let's take a look at three columns
k <- tweet[,c("created_at", "screen_name", "text")]

write.csv(k, "homework_twitter_scrapping.csv")

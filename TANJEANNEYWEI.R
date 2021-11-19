#loading the package:
library(xml2)
library(rvest)
library(stringr)
#Specifying the url for desired website to be scrapped
url <- 'http://covid-19.livephotos123.com/'
#Reading the html content from Covid-19 Live Photos
webpage <- read_html(url)
#scrape info of the covid- 19
title_html <- html_nodes(webpage, 'h2')
title <- html_text(title_html)
covid_infected <- html_nodes(webpage, 'span.number-title.danger.count')
covid <- html_text(covid_infected)
covid_recovered <- html_nodes(webpage, 'span.number-title.success.count')
recovered <- html_text(covid_recovered)
covid_import <- html_nodes(webpage, 'span.number-title.warning.count')
import <- html_text(covid_import)
covid_active <- html_nodes(webpage, 'span.number-title.count')
active <- html_text(covid_active)
head(title)
head(covid)
head(recovered)
head(import)
head(active)
Use dplyr functions and the pipe operator to transform the following English sentences into R code:

Take the hflights data set and then ...
Add a variable named diff that is the result of subtracting TaxiIn from TaxiOut, and then ...
Pick all of the rows whose diff value does not equal NA, and then ...
Summarise the data set with a value named avg that is the mean diff value.

# hflights and dplyr are both loaded and ready to serve you

# Write the 'piped' version of the English sentences.
hflights %>%
  mutate(diff = TaxiOut - TaxiIn) %>%
  filter(!is.na(diff)) %>%
  summarise(avg = mean(diff))

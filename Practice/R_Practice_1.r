# Program to check if the input year is a leap year or not
year = as.integer(readline(prompt = 'Enter a year: '))
# Run top line, input year then run following statements
if((year %% 4) == 0) {
if((year %% 100) == 0) {
if((year %% 400) == 0) {
print(paste(year, 'is a leap year'))
} else {
print(paste(year, 'is not a leap year'))
}
} else {
print(paste(year, 'is a leap year'))
}
} else {
print(paste(year, 'is not a leap year'))
}


# Finding factorial of a number
recur_factorial <- function(n)
  if(n <= 1) {
    return(1)
  } else {
    return(n * recur_factorial(n-1))
  }
# Testing
recur_factorial(5)
recur_factorial(2)
recur_factorial(3)
recur_factorial(50)



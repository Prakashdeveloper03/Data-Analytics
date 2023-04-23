fact <- function(x) {
  if (x == 0) {
    return(1)
  } else {
    return(x * fact(x - 1))
  }
}

num <- readline("Enter the number: ") |> as.integer()
paste("Factorial of", num, "is", fact(num)) |> print()

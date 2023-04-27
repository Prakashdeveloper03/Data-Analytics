values <- readline("Enter a vector of values separated by spaces: ") |>
  strsplit(" ") |>
  unlist() |>
  as.integer()

bubble_sort <- function(arr) {
  n <- length(arr)
  for (i in 1:(n - 1)) {
    for (j in 1:(n - i)) {
      if (arr[j] < arr[j + 1]) {
        temp <- arr[j]
        arr[j] <- arr[j + 1]
        arr[j + 1] <- temp
      }
    }
  }
  return(arr)
}

paste("Original values: ", values, "\n") |> print()
paste("Sorted values: ", bubble_sort(values)) |> print()

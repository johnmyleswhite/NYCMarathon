clean.variable.name <- function(variable.name)
{
  variable.name <- gsub('_', '.', variable.name, perl = TRUE)
  variable.name <- gsub('-', '.', variable.name, perl = TRUE)
  variable.name <- gsub('\\s+', '.', variable.name, perl = TRUE)
  return(variable.name)
}

# Returns fractional minutes
numericize <- function(time.string)
{
  components <- strsplit(as.character(time.string), ':')[[1]]
  components <- as.numeric(components)
  time <- components[1] * 60 * 60 + components[2] * 60 + components[3]
  return(time <- time / 60)
}

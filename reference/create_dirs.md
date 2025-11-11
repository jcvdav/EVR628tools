# Create standard project directories

Creates a set of standard directories in the repository: scripts, data,
results and the main subdirectories

## Usage

``` r
create_dirs(other_dirs = NULL)
```

## Source

Borrowed from my old startR package at
<https://github.com/emlab-ucsb/startR/blob/master/R/create_local_dirs.R>

## Arguments

- other_dirs:

  If needed, a character vector containing the names for extra
  directories.

## Examples

``` r
if (FALSE) { # \dontrun{
create_dirs() # This creates default directories

create_dirs(other_dirs = "docs") # Creates all default directories and a "docs" directory
} # }
```

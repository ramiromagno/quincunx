# quincunx 0.1.9

* Converted magrittr pipe to native pipe in internal code and in vignettes.

# quincunx 0.1.8

* Fixes issue https://github.com/maialab/quincunx/issues/3 by introducing a
rate limit on requests of 80 requests per minute.
* Make parsing of `estimate` variable more robust, i.e. parse `estimate` values
even when the values come as strings with intervals, e.g. `"62.4 [48.9, 75.9]"`.
* PubMed ids are now parsed as integers in line with PGS Catalog API docs.

# quincunx 0.1.7

* Support reading harmonized PGS scoring files with `read_scoring_file()`.

# quincunx 0.1.6

* Make official online documentation at https://rmagno.eu/quincunx/.

# quincunx 0.1.5

* `read_scoring_file()` has been updated to work with version 2.0 of PGS scoring
file format.

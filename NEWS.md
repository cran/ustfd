# ustfd 0.4.4

-   During January, 2024the API stopped coding record numbers as data-type `CURRENCY` and started coding them as `CURRENCY0` in the meta record. The `CURRENCY0` type did not previously exist and therefore did not have an associated mapping.

# ustfd 0.4.3

-   Better documentation of how filters work on API requests.
-   Improve documentation and use roxygen reuse functionality to reduce dupes
-   Refactor `parsed_payload` to eliminate dplyr dependencies
-   Refactor `ustfd_all_pages` in an attempt to reduce memory use. Previously,
request aggregation was temporarily using more memory than necessary and 
requests resulting in a very high number of records (>200,000) were leading to
large temporary memory allocations, potentially leading to performance issues 
or, in rare cases, crashes.

# ustfd 0.4.2

-   During the week ending October 27th a number of API endpoints changed.

# ustfd 0.4.1

-   During the week ending August 18th the API stopped coding record numbers as data-type `NUMBER` and started coding them as `INTEGER` in the meta record. The `INTEGER` type did not previously exist and therefore did not have an associated mapping.

# ustfd 0.4.0

## Breaking Changes:

-   removed `ustfd_endpoints()` and `ustfd_field_dictionary()`. They are replaced by `ustfd_datasets()`, `ustfd_tables()`, and `ustfd_table_columns()`

## Other:

-   leading `/` on endpoints is now optional.

## Behind the scenes:

-   the dictionaries can now be easily updated before release instead of relying on a static endpoint list.
-   functions that had `NA` defaults now have `NULL` defaults.

# ustfd 0.2.0

-   Better error handling using `rlang`
-   YEAR, QUARTER, MONTH, and DAY columns are treated as integers, not numeric
-   PERCENTAGE columns no are no longer multiplied by 0.01. This change breaks existing behavior but was absolutely necessary to do before anyone relied on it.
-   Previously, a request that generated zero results would result in an error
-   `ustfd_response_payload` now guarantees the return is a tibble with the correct number of columns in the correct types, even if a the request generates no results.

# ustfd 0.1.1

-   Correct error in the `ustfd_field_dictionary()` documentation/example

# ustfd 0.1.0

-   Initial release.

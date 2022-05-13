# An example of using multiple branches

This repository demonstrates how to use multiple branches to work on separate ideas in parallel, using a toy data set as a case study.
It is divided into several directories:

- `analysis` contains scripts that perform the data analysis;
- `input_data` contains the input data for the data analysis; and
- `ouputs` contains output figures, tables, etc.

## Requirements

The data analysis requires [R](https://www.r-project.org/) version 3.6 or newer.

## Usage

To run the toy data analysis, run the provided script from the same directory as this `README.md` file:

```sh
./analysis/initial_exploration.R
```

This will calculate some basic summary statistics and save them to `./outputs/summary.csv`.

## License

This repository is distributed under the terms of the [MIT license](https://choosealicense.com/licenses/mit/).
See `LICENSE` for details.

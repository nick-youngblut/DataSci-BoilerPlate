#!/usr/bin/env Rscript

# library
suppressPackageStartupMessages(library("argparse"))

# create parser object
parser = ArgumentParser()

# specifying options
parser$add_argument("file", nargs=1, help="File to be displayed")
parser$add_argument("-v", "--verbose", action="store_true", default=TRUE,
			   help="Print extra output [default]")
parser$add_argument("-q", "--quietly", action="store_false",
			   dest="verbose", help="Print little output")
args = parser$parse_args()

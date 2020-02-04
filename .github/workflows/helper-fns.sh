#!/bin/bash

# This file contains some functions to help out with IO because there is some questionable logic in GH yaml parsing

code () {
    # Read from STDIN and wrap contents in GFM codeblock demarcation
    # Takes an optional argument of a file name to override where output is concatenated (default: gh-pages/README.md)
    printf '\n```\n' >> "${1:-${DOC:-gh-pages/README.md}}"
    while IFS= read -r line; do
        echo "$line" >> "${1:-${DOC:-gh-pages/README.md}}"
    done
    printf '```\n\n' >> "${1:-${DOC:-gh-pages/README.md}}"
}

twocol () {
    # Print a GFM table header with two columns, the first of which is right-aligned
    printf '\n| `key` | `value` |\n| ---: | --- |\n' >> "${1:-${DOC:-gh-pages/README.md}}"
}

h () {
    # Print a markdown header with the level specified by an integer.
    head_symbols='#################################'
    head="${head_symbols:0:${1:-1}}"
    printf '\n%s %s\n\n' "$head" "$2" >> "${3:-${DOC:-gh-pages/README.md}}"
}

to_list () {
    printf '\n' >> "${1:-${DOC:-gh-pages/README.md}}"
    while read -r line; do
        printf '  * %s\n' "$line" >> "${1:-${DOC:-gh-pages/README.md}}"
    done
}

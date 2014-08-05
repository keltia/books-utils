# Books::Utils

This gem includes various [Calibre](http://calibre-ebook.com) -related utilities.
For the moment a wrapper around the `calibredb` utility with more output formats.

## Installation

Install it yourself as:

    $ gem install books-utils

## Dependencies

It should install the dependencies itself automagically (namely Ox & Oj for
XML and JSON support.

You MUST install the command-line utilities from within Calibre for this to
work as it relies on `calibredb` for querying the library.

## Usage

    Usage: newer-than [-h] [-D path] [-f format] [-d DATE | -t DAYS]

    Default is 1 day.  Default format is space-delimited.

      -D, --library=DIR                Use that library path instead of the default.
      -d, --since=DATE                 Use that date to search after or ALL
      -f, --format=json|yaml|xml       Specify output format
      -t, --newer-than=DAYS            Threshold date to look for
      -h  --help                       Display this usage

`-d ALL` lists all books.

## Output formats
 
The default is a simple space-delimited output, suited for cut&paste. You can
also generate JSON, YAML or XML by specifying the `-f` option.

## Compatibility

It should run on most Ruby implementations, it has been tested with Ruby MRI 2.0
and Rubinius 2.2.*.

## BUGS

Not tested on Windows at all, no system to check on.  Tested on OSX.
Should work on FreeBSD and Linux.  If not please submit issues (and patch
if you can).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/books-utils/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

# Books::Utils

This gem includes various [Calibre](http://calibre-ebook.com) -related utilities.
For the moment a wrapper around the `calibredb` utility with more output formats.

## Installation

It is not yet published on http://rubygems.org so you'll need to fork the project
with `git`and use `bundler` and `rake` to do it manually. 

    bundle
    rake install

## Dependencies

It should install the dependencies itself automagically (namely `Ox` & `Oj` for
XML and JSON support and `pastebin` for `-P` support.  `gem` should to the right thing
when installing.

You *MUST* install the command-line utilities from within Calibre for this to
work as it relies on `calibredb` for querying the library.

You *MUST* also have a custom column named 'Added:' that is supposed to have the
date each book was added, or edit the source to change `#added:` into `date:`.

The default configuration file in the [TOML](https://github.com/toml-lang/toml)
format and located by default in `$HOME/.books-utils/config.toml` is not optional
anymore as it now contains some of the previously hardcoded variables.

## Usage

newer-than v0.6.0

Usage: newer-than [-hqvPZ] [-D path] [-c RCFILE] [-f format] [-o DIR] [-d DATE | -t DAYS]

Default is 1 day.  Default format is space-delimited.

    -D, --library=DIR                Use that library path instead of the default.
    -P, --pastebin                   Post directly to pastebin.
    -Z, --zip                        Generate a zip file with the new files.
    -c, --config-file=FILE            Specify a configuration file, default is ~/.@conf/books-utils.yml
    -d, --since=DATE                 Use that date to search after
    -f, --format=json|rss|yaml|xml   Specify output format
        --output-dir=DIR             Set output dir for -Z, default is "/tmp".
    -q, --quiet                      Do not display the result (generally with -P).
    -t, --newer-than=DAYS            Threshold date to look for
    -h, --help                       Display this usage

`-d ALL` lists all books.

To post directly into a pastebin, install the `pastebin` gem and use

    newer-than -dYYYY-MM-DD -P
    
You may need to get an API key for pastebin, see [the pastebin API](http://pastebin.com/api).

If you want to generate a Zip file with all new files, please use `-Z`.  Default directory is `/tmp`.  The filename will have the date specified.

## Output formats
 
The default is a simple space-delimited output, suited for cut&paste. You can also generate JSON,
YAML, RSS or XML by specifying the `-f` option.  RSS variant is Atom only for the moment.

## Compatibility

It should run on most Ruby implementations, it has been tested with Ruby MRI 2.x
and Rubinius 2.2.*.

## BUGS

Not tested on Windows at all, no system to check on.  Developped & Tested on OS X.
Should work on FreeBSD and Linux.  If not please submit issues (and patch if you can).

## Contributing

1. Fork it ( https://github.com/keltia/books-utils/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

# Books::Utils

This gem includes various Calibre-related utilities.

## Installation

Install it yourself as:

    $ gem install books-utils
    
It should install the dependencies itself automagically (namely Ox & Oj for
XML and JSON support.

## Usage

Usage: newer-than [-h] [-f format] [-d DATE|-t DAYS]

Default is 1 day.

    -d, --since=DATE                 Use that date to search after
    -f, --format=json|yaml|xml       Specify output format
    -t, --newer-than=DAYS            Threshold date to look for
    -h  --help                       Display this usage

## Contributing

1. Fork it ( https://github.com/[my-github-username]/books-utils/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

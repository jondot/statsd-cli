# Statsd-cli

Report statsd metrics via command line.  
You can follow [@jondot](http://twitter.com/jondot) for any questions.



## Usage
Statsd-cli was built in order to provide tooling for out of band systems such as
Nagios.  

Here is an example command you can in your shell, or shell out
in your Nagios checks, and any other system for that matter.

    $ statsd -h stats.me.com -o count -m mongo.rw.ip-42-42-42-42 -v 31

Options:

    -h, --host             Statsd host
    -m, --metric           Metric to report
    -o, --operation        Statsd operation: increment, decrement, timing, count
    -v, --value            Metric value
    -s, --sample_rate      Sampling rate
    -h, --help             Print this help message

## Contributing

Fork, implement, add tests, pull request, get my everlasting thanks and a respectable place here :).

## Copyright

Copyright (c) 2011 [Dotan Nahum](http://gplus.to/dotan) [@jondot](http://twitter.com/jondot). See MIT-LICENSE for further details.

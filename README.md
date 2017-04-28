# stackprof-run

Run a ruby script with [stackprof](https://github.com/tmm1/stackprof).

## Installation

```sh
$ gem install stackprof-run
```

## Basic Usage

`stackprof-run` executes received command with stackprof.

```sh
# Run RuboCop with stackprof
$ stackprof-run rubocop some_ruby_file.rb

# Run a rake task
$ stackprof-run bin/rake some_task
```

### Options

```bash
$ stackprof-run --help
Usage: stackprof-run [options] command [command options]
    -m, --mode=MODE                  :cpu(default), :wall, :object
    -o, --out=FILE                   Output file name. (default: stackprof-out)
    -i, --interval=INTERVAL
    -no-aggregate
    -r, --raw
```



## Known issue

This gem dependents `which` command, so, it does not work in Windows.


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/pocke/stackprof-run.

License
-------

These codes are licensed under CC0.

[![CC0](http://i.creativecommons.org/p/zero/1.0/88x31.png "CC0")](http://creativecommons.org/publicdomain/zero/1.0/deed.en)

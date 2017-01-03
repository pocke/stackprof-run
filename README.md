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

## Advanced Usage

### Specify output filename

`stackprof-run` puts result to `./stackprof-out` in default. You can specify the filename by an environment variable.

```sh
$ STACKPROF_OUT=stackprof_result stackprof-run some_ruby_command
$ file stackprof_result
stackprof_result: data
```

### Specify stackprof mode

`stackprof-run` executes stackprof with `cpu` mode in default. You can specify the mode by an environment variable.

```sh
$ STACKPROF_MODE=wall stackprof-run some_ruby_command
```



## Known issue

This gem dependents `which` command, so, it does not work in Windows.


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/pocke/stackprof-run.

License
-------

These codes are licensed under CC0.

[![CC0](http://i.creativecommons.org/p/zero/1.0/88x31.png "CC0")](http://creativecommons.org/publicdomain/zero/1.0/deed.en)

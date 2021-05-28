[![ci](https://github.com/alexhumphreys/hello-idris2/actions/workflows/ci.yml/badge.svg)](https://github.com/alexhumphreys/hello-idris2/actions/workflows/ci.yml)

# Hello Idris2

This is a template of an idris2 project. It has some simple modules setup, golden tests created, and a github action to run them.

There's comments scattered throughout that'll hopefully help you customise this to your own needs.

This is still an early draft for this, so if you can think of any features that would be good to showcase, comments to add, package manages to configure, please do contribute them! And feel free to open issues if you run into any.

## Running

To build this project, run:

```
make build
```

To test this project, run:

```
make test
```

To create and run an executable, run:

```
make run-executable
```

There's some other `make` tasks for editing files (using `rlwrap` to make the repl behave better), and for docker and documentation. Take a look to see.

## Documentation

The CI job also builds a docs site (using the command `idris2 --mkdoc`) and publishes it to Github Pages. You can see the one for this project at https://alexhumphreys.github.io/hello-idris2/

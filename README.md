# rblineprof-report

A simple utility to format and print the result of [rblineprof](https://github.com/tmm1/rblineprof).
Makes line-by-line source code profiling easy.

## Installation

Add this line to your application's Gemfile:

```
gem 'rblineprof',
gem 'rblineprof-report'
```

And then execute:

```
$ bundle
```

## How to Use

```rb
require 'rblineprof'
require 'rblineprof-report'

target = 'app.rb' # or regular expression like /./
profile = lineprof(target) do
  ...
end
LineProf.report(profile)
```

## Special Thanks

This is a simple port of [rack-lineprof](https://github.com/kainosnoema/rack-lineprof) to make it possible to use in non-rack application.

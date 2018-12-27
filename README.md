# rblineprof-report

A simple utility to format and print the result of [rblineprof](https://github.com/tmm1/rblineprof).
Makes line-by-line source code profiling easy.

## Installation

Add this line to your application's Gemfile:

```
gem 'rblineprof'
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

Result Example:

```
[LineProf] ===============================================================

example.rb
               |   4  target = /./
               |   5  profile = lineprof(target) do
 102.8ms     1 |   6    sleep 0.1
               |   7  end
               |   8  LineProf.report(profile)
```

## Options

### thresholds

Change thresholds to show as:

```ruby
LineProf.report(profile, threshods: {
  LineProf::CRITICAL => 1000, # default:  50 (ms)
  LineProf::WARNING  =>  100, # default:   5 (ms)
  LineProf::NOMINAL  =>   10, # default: 0.2 (ms)
})
```

### out

Outputs to a file:

```ruby
LineProf.report(profile, out: '/tmp/report.txt')
```

## Special Thanks

This is a simple port of [rack-lineprof](https://github.com/kainosnoema/rack-lineprof) to make it possible to use in non-rack application.

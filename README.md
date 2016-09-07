## Getting started

```bash
$ irb
```

```ruby
require_relative "lib/larc"
require "matrix"
```

## Run Tests

```bash
$ script/test
```

## 1. Vectors

### Quiz: Plus, minus, scalar multiplication

```ruby
Larc::Vector[8.218, -9.341] + Larc::Vector[-1.129, 2.111]
Vector[8.218, -9.341] + Vector[-1.129, 2.111]

Larc::Vector[7.119, 8.215] - Larc::Vector[-8.223, 0.878]
Vector[7.119, 8.215] - Vector[-8.223, 0.878]

Larc::Vector[1.671, -1.012, -0.318] * 7.41
Vector[1.671, -1.012, -0.318] * 7.41
```

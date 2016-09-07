# Linear Algebra Refresher Course

My notes and code for the [linear algebra refresher course on Udacity](https://classroom.udacity.com/courses/ud953).

## Run Tests

```bash
$ script/test
```

## Setup For Quizzes

```bash
$ irb
```

```ruby
require_relative "lib/larc"
require "matrix"
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

### Quiz: Coding dot product and radians/degrees

```ruby
Larc::Vector[7.887, 4.138].inner_product(Larc::Vector[-8.802, 6.776])
Vector[7.887, 4.138].inner_product(Vector[-8.802, 6.776])

Larc::Vector[-5.955, -4.904, -1.874].inner_product(Larc::Vector[-4.496, -8.755, 7.103])
Vector[-5.955, -4.904, -1.874].inner_product(Vector[-4.496, -8.755, 7.103])

Larc::Vector[3.183, -7.627].radians(Larc::Vector[-2.668, 5.319])
Vector[3.183, -7.627].angle_with(Vector[-2.668, 5.319])

Larc::Vector[7.35, 0.221, 5.188].degrees(Larc::Vector[2.751, 8.259, 3.985])
(Vector[7.35, 0.221, 5.188].angle_with(Vector[2.751, 8.259, 3.985]) * (180 / Math::PI)).round(3)
```

### Quiz: Checking for parallelism and orthogonality

```ruby
Larc::Vector[-7.579, -7.88].parallel(Larc::Vector[22.737, 23.64])
Larc::Vector[-7.579, -7.88].orthogonal(Larc::Vector[22.737, 23.64])

Larc::Vector[-2.029, 9.97, 4.172].parallel(Larc::Vector[-9.231, -6.639, -7.245])
Larc::Vector[-2.029, 9.97, 4.172].orthogonal(Larc::Vector[-9.231, -6.639, -7.245])

Larc::Vector[-2.328, -7.284, -1.214].parallel(Larc::Vector[-1.821, 1.072, -2.94])
Larc::Vector[-2.328, -7.284, -1.214].orthogonal(Larc::Vector[-1.821, 1.072, -2.94])

Larc::Vector[2.118, 4.827].parallel(Larc::Vector[0, 0])
Larc::Vector[2.118, 4.827].orthogonal(Larc::Vector[0, 0])
```

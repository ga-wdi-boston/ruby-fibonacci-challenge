[![General Assembly Logo](https://camo.githubusercontent.com/1a91b05b8f4d44b5bbfb83abac2b0996d8e26c92/687474703a2f2f692e696d6775722e636f6d2f6b6538555354712e706e67)](https://generalassemb.ly/education/web-development-immersive)

# Ruby Fibonacci Challenge

In this challenge, you will create a Fibonacci sequence generator. It will be
enumerable and lazy, like `Range` and the previously created `SteppedRange`.

## Prerequisites

-   [Fibonacci number](https://en.wikipedia.org/wiki/Fibonacci_number)
-   [Module: Enumerable (Ruby 2.3.0)](http://ruby-doc.org/core-2.3.0/Enumerable.html)
-   [Class: Range (Ruby 2.3.0)](http://ruby-doc.org/core-2.3.0/Range.html)
-   [Ruby Enumerable and Comparable](https://github.com/ga-wdi-boston/ruby-enumerable-custom)

## Instructions

1.  Fork and clone this repository.
1.  Change into the new directory.
1.  Install dependencies.
1.  Create and checkout a new branch to work on.
1.  Fulfill the listed requirements.

Starter code is available in [`lib/challenge.rb`](lib/challenge.rb). A pull
request is not required, but it is necessary if you want a code review.

You may wish to refer to [FAQs](https://github.com/ga-wdi-boston/meta/wiki/)
related to [forking,
cloning](https://github.com/ga-wdi-boston/meta/wiki/ForkAndClone).

## Requirements

-   `FibonacciRange` is Enumerable.
-   `FibonacciRange` has one instance variable `@stop`. It stores no other
    state on the instance.
-   `#each` stores no more than three values to do its work: `current_fib`,
    `previous_fib`, and `next_fib`.
-   `FibonacciRange.new` takes one required, positional argument: `stop`
-   `FibonacciRange` always starts at `0` when creating a new sequence.
-   You should not create a list when `FibonacciRange.new` is called. Instead,
    `FibonacciRange.new(10).map(&:itself)` should return `[0, 1, 1, 2, 3, 5,
    8]`. This is referred to as "lazy evaluation".
-   `FibonacciRange.new(10).to_a` should return `[0, 1, 1, 2, 3, 5, 8]`

Pay attention to your linter and fix any syntax errors as they occur. You should
run `bin/rake test` to run the included tests. Tests will tell you whether or
not you've met these requirements.

## Bonus

Write a class, `FibonacciNumber`, that returns the `nth` number in the Fibonacci
sequence. Requirements:

-   `FibonacciNumber` stores no state on the instance.
-   `FibonacciNumber.new` and `FibonacciNumber.new(1)` should both
    return the the first Fibonacci number, `0`. In this case, we use "first" as
    mathematicians would use it, whereas programmers would say "zeroth".
-   `FibonacciNumber.new(3).to_i` returns the third Fibonacci number. Since the
     Fibonacci sequence is `0, 1, 1, 2, 3, 5...`, the third number is 1.

This will be **very difficult**. You may or may not choose to reuse your
`FibonacciRange`. Try it both ways, starting with using `FibonacciRange`. You
will have to make some interesting decisions about how to use it. Then, try a
solution without `FibonacciRange`, instead using recursion. Make note of the
tradeoffs between (pros and cons of) each solution.

## Tasks

Developers should run these often!

-   `bin/rake nag`  (or `bundle exec rake nag`):
    runs code quality analysis tools on your code and complains.
-   `bin/rake test` (or `bundle exec rake test`): runs automated tests.
-   `bin/rake` will run both `nag` and `test`

## [License](LICENSE)

1.  All content is licensed under a CC­BY­NC­SA 4.0 license.
1.  All software code is licensed under GNU GPLv3. For commercial use or
    alternative licensing, please contact legal@ga.co.

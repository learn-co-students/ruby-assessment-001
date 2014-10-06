---
languages: ruby
tags: assessment
resources: 0
---

# Ruby Assessment

Run `bundle install` to install all dependencies 

Run `rspec spec/level_x_spec.rb` where x is the level you want to run. Start with Level 1.

Run `rake spec` to run all of the tests when you are done. Running it before you finish will prevent all tests from running.

## Levels 1 - 3

To pass these levels add code with the tests. For most cases, put your code before the expectations, execpt for the tests that have `expect(STDOUT).to receive(:puts)`. Your code should go AFTER those expectations. 

## Level 4

You will have to put your code separate files that should be loaded. Add your methods for level 4 in the file located in the `lib` directory, named `level4.rb`.

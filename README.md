## Hacker Rank's "Bot Saves Princess challenge 1 & 2"

## Table of Contents

- [My Solutions](#my-solutions)
- [Local Install](#local-install)
- [Tech Used](#tech-used)
- [Prerequisites](#prerequisites)
- [Prerequisites](#prerequisites)
- [How it came together](#how-it-came-together)

### My solutions

- These are my solutions for the "Bot Saves Princess challenge 1 & 2". Navigate to the 2nd link on each challenge below, for a gist file, which you can copy/paste at the bottom of the Hacker Rank challenge page, located in the first link on each challenge below. Make sure to change the Hacker Rank submission setting to "Ruby".

  Challenge 1 - https://www.hackerrank.com/challenges/saveprincess  - https://gist.github.com/jordanfbeck0528/420d1dccce286f3d78cfe95e2b0f1ea3

  Challenge 2 - https://www.hackerrank.com/challenges/saveprincess2 - https://gist.github.com/jordanfbeck0528/185c9ad15f062ea1e9293674aa1d13f8

### Local Install

- If you would like to install and run tests locally run the instructions below, in your terminal.

  git@github.com:jordanfbeck0528/sesac_challenge.git
  cd sesac
  bundle install
  cd princess_1
  bundle exec rspec
  cd ..
  cd princess_2
  bundle exec rspec

### Testing Tech Used

- [RSpec] https://rspec.info/documentation/3.10/rspec-core/ 
- [pry] https://github.com/pry/pry
- [simplecov] https://github.com/simplecov-ruby/simplecov

### Prerequisites

* __Ruby__

  - The project is built with rubyonrails using __ruby version 2.5.3p105__, you must install ruby on your local machine first. Please visit the [ruby](https://www.ruby-lang.org/en/documentation/installation/) home page to get set up. _Please ensure you install the version of ruby noted above._

### How it came together

- [TLDR](#TLDR)
- [princess_1](#princess_1)
- [princess_2](#princess_2)

#### TLDR

- Initially, my thoughts on the exercise were to create a few classes - Grid, Bot, Princess, and Path. I would run everthing through the Grid class, so that I could eventually use my Grid class for both exercises. Eventually, I realized that I was not taking input the way I was expected to, and rather I had created a system that could randomly produce valid locations for bot and princess(Again, with the hope that I could use the logic for both exercises). This code is working, and fully tested under princess_1_oop(But obviously does not pass any Hacker Rank tests) if you are interested in taking a look.

- What I needed to do, rather than create, and place objects was actually much simpler. Taking the size, and grid input provided to me, I was able to slim down my code quite a bit, and not require the instantiation of any objects in my code. Ultimatley, I was able to make a module to share my Path logic, for both exercises in addition to completing both exercises, with minimal classes, and with 100% coverage and passing tests.

#### princess_1

- Bot, and Princess classes ended up nearly the same and are potentially an opportunity for refactor. The only responsibility for each of them, is to find their own locaitons on the grid input, using a class method. This was achieved through using nested iterations and each_with_index, to validate the presence and location of both "m" and "p", on the board, then return the location. 

- Path was the only other class I ended up needing for the exercise. Though I must also mention here, that Path leans heavily on the path_helper_module, used by both exercises, and to be discussed more later. The Path class begins with a gaurd clause for bad input data form the user. Allowing for only Integer, Odd, and between 3-99 for the size, and allowing only an Array for the grid. Next, we call on the class methods from Bot, and Princess and assign them to variables, then use those variables as arguments for the make_path method in the path_helper_module. 

- Becaue I am using class methods in the Path class, I used extend, instead of include in my Path class, for use of the module. The path_helper_module was composed of multiple methods, that work together. They are make_path, and directions. Eventually removed and not needed, was also a number_cleaner, for absolute value math. "directions" is a method that uses the locations of bot, and princess, to find a route between them. It stores "moves" in an Array with the same name, the moves are evnetually called at the end of the method, using a join, and gsub to replace the commas with "\n". 

#### princess_2

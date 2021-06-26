# Hacker Rank's "Bot Saves Princess challenge 1 & 2"

## Table of Contents

- [My Solutions](#my-solutions)
- [Local Install](#local-install)
- [Prerequisites](#prerequisites)
- [Testing Tech Used](#testing-tech-used)
- [How it came together](#how-it-came-together)
  - [TLDR](#TLDR)
  - [princess_1](#princess_1)
  - [- Bot and Princess Classes](#bot-and-princess-classes)
  - [- Path Class](#path-class)
  - [- Path Helper Module](#path-helper-module)
  - [- Locator Helper Module](#locator-helper-module)
  - [princess_2](#princess_2)
  - [- The Difference](#the-difference)
  - [Testing](#testing)
  - [Areas for Improvement](#areas-for-improvement)

## My solutions

- These are my solutions for the "Bot Saves Princess challenge 1 & 2". Navigate to the link after each challenge listed below, for access to a gist file, which you can copy/paste at the bottom of the Hacker Rank challenge page. This is located in the first link labeled, "challenge", "1", or "2" below. Make sure to change the Hacker Rank submission setting to "Ruby", once you are pasting in the submission. 

- Additionally, if you are not familiar with these challenges, you can read them directly at the first link. 

- The solutions below are refactored for maximum efficiency as a hacker rank submission. Installing [locally](#local-install), or viewing [princess_1](https://github.com/jordanfbeck0528/sesac_challenge/tree/main/princess_1), [princess_2](https://github.com/jordanfbeck0528/sesac_challenge/tree/main/princess_2), and [modules](https://github.com/jordanfbeck0528/sesac_challenge/tree/main/modules) from the code on my [GitHub](https://github.com/jordanfbeck0528/sesac_challenge) - will allow you to view the code as it exists in it's classes, modules, and testing.

  [Hacker Rank Challenge 1](https://www.hackerrank.com/challenges/saveprincess)  - [Challenge 1 Gist](https://gist.github.com/jordanfbeck0528/420d1dccce286f3d78cfe95e2b0f1ea3)

  [Hacker Rank Challenge 2](https://www.hackerrank.com/challenges/saveprincess2) - [Challenge 2 Gist](https://gist.github.com/jordanfbeck0528/185c9ad15f062ea1e9293674aa1d13f8)

## Local Install

- If you would like to install and run tests locally run the instructions below, in your terminal.

  - git clone git@github.com:jordanfbeck0528/sesac_challenge.git
  
  - cd sesac
  
  - bundle install
  
  - cd princess_1

  - bundle exec rspec

  - cd ..

  - cd princess_2

  - bundle exec rspec

## Prerequisites

* __Ruby__

  - The project is built using __ruby version 2.5.3p105__, you must install ruby on your local machine first. Please visit the [ruby](https://www.ruby-lang.org/en/documentation/installation/) home page to get set up. _Please ensure you install the version of ruby noted above._

## Testing Tech Used

- [RSpec](https://rspec.info/documentation/3.10/rspec-core/) 
- [pry](https://github.com/pry/pry)
- [simplecov](https://github.com/simplecov-ruby/simplecov)

# How it came together

## TLDR

- Initially, my thoughts on the exercise were to create a few classes - Grid, Bot, Princess, and Path. I would run everthing through the Grid class, so that I could eventually use my Grid class for both exercises. Eventually, I realized that I was not taking input the way I was expected to, and rather I had created a system that could randomly produce valid locations for bot, and princess(Again, with the hope that I could use the logic for both exercises). This code is working, and fully tested under [princess_1_oop](https://github.com/jordanfbeck0528/sesac_challenge/tree/main/princess_1_oop)(This does not pass any Hacker Rank tests, but I included it for further reference of some testing and OOP) if you are interested in taking a look.

- What I needed to do, rather than create, and place objects was actually much simpler. Taking the size, and grid input provided to me, I was able to slim down my code quite a bit, and not require the instantiation of any objects in my code. Ultimatley, I was able to make a module to share my Path logic, and another to share the Character Locator(Princess, and bot) logic for both exercises. In addition to completing both exercises, with minimal classes, and with 100% coverage and passing tests. 

## princess_1

### Bot and Princess

- Bot, and Princess classes in princess_1 ended up nearly the same, and the shared method was refactored out into a [locator_helper_module](#locator-helper-module). The only responsibility for Bot and Princess Classes, is to find their own locations on the grid input, using another Class method which was refactored into a module. This method was made using nested iteration, and each_with_index, to validate the presence and location of both "m", or "p" chracters on the board, then return their locations in [row, column] format. 

<img width="493" alt="Screen Shot 2021-06-26 at 10 35 47 AM" src="https://user-images.githubusercontent.com/68141454/123519719-46584700-d66a-11eb-99d8-c9d5ad059470.png">
<img width="499" alt="Screen Shot 2021-06-26 at 10 36 13 AM" src="https://user-images.githubusercontent.com/68141454/123519734-5708bd00-d66a-11eb-9ae5-b1a144c0bc16.png">


### Path

- Path was the only other class I ended up needing for the exercise, though I have Bot and Princess for OOP reasons, and readability. Though I must also mention here, that Path, and the Character classes lean heavily on their helper modules, used in both exercises, and to be discussed more later. The Path class begins with a gaurd clause for bad input data form the user. Allowing for only an Odd Integer, between 3-99 for the size argument, and allowing only an Array for the grid argument. Next, we call on the class methods from the locator module, through Bot, and Princess, and assign them to variables, then use those variables as arguments for the make_path method, called within the Path class method, from the [path_helper_module](#path-helper-module). 

![Screen Shot 2021-06-25 at 6 58 04 PM](https://user-images.githubusercontent.com/68141454/123496824-49f6ba00-d5e7-11eb-8620-b2d41249dcba.png)

### Path Helper Module

- In order to Abstract, and Encapsulate better, I used Inheritance from Models to Classes in this Challenge. Becaue I am using class methods everywhere outside of the module, I used extend, instead of include in my Path class. The path_helper_module was composed of multiple methods, that work together. They are make_path, and directions. Eventually removed and not needed, was also a number_cleaner, for absolute value math. "make_path" itself, calls on "directions" eventually. First, in make_path, we find the first and second move. We get these moves by doing some math. The first move is based on the absolute value of the first index of the bot location, minus the first index of the princess location. The second move is based on the same idea, but with the second index, instead of the first. 

- These first and second move variables are then included in the next lines arguments for the directions method. "directions" is a method that uses the locations of bot, and princess, along with the first move, and second move, to find a route between the bot and princess, on the grid. Conditional logic is used here to decide if up/down/left/right are needed, and how much. All moves travel the minimal distance, moving like a Rook in Chess. Finally the directions method stores "moves" in an Array with the same name, the moves are eventually called at the end of the method, using a join, and gsub to replace their commas with "\n". 

![Screen Shot 2021-06-25 at 6 56 39 PM](https://user-images.githubusercontent.com/68141454/123496796-174cc180-d5e7-11eb-9c76-1196677af736.png)

### Locator Helper Module

Both exercises used the exact same methods to locate characters, so I made another module to DRY up my code. 

<img width="559" alt="Screen Shot 2021-06-26 at 10 34 40 AM" src="https://user-images.githubusercontent.com/68141454/123519691-2032a700-d66a-11eb-896c-62a592b51309.png">


## princess_2

### The Difference

- Becasue of how I structured the 1st exercise, the 2nd was nearly done when I started it. The only changes are slightly different inputs for the Path Class, and no need for a Bot class any longer. At the end of the make_path method, we split at \n to create an array of the directions, then we take the first one. This means, that the code for princess_1, applied here, could still find the princess from any bot starting point.

![Screen Shot 2021-06-25 at 7 23 06 PM](https://user-images.githubusercontent.com/68141454/123497439-c8a12680-d5ea-11eb-9940-c1a502b7b925.png)

## Testing 

- My testing is all passing, with a 100% in simplecov. This includes happy, and sad path testing, with some edge cases. A small example below -

![Screen Shot 2021-06-25 at 7 34 52 PM](https://user-images.githubusercontent.com/68141454/123497727-6cd79d00-d5ec-11eb-9fa9-3bf796c7162e.png)

## Areas for Improvement

- As always there are tons of places a person can improve. I think right away I would say that I am not where I want to be with my git history. I got a little caught up in the ADHD zone, and did not commit as frequently as I wanted to. I did an alright job taking time to plan for this challenge, I decided to have a little fun, and wrote my initial game plan out on post it notes, and moved them around on my white board, to simulate a kanban project board. As I had to pivot what the actual program I had written was doing, I decided that I also should have noticed earlier, I was not using the given input properly, which is 100% the biggest area to improve. A simple mistake that can cost a lot of time. As they say in the restaurant industry, "Slow down to speed up!". Lastly, testing can always improve, even at 100% coverage!!!


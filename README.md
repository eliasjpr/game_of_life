# Common - Game of Life

The *Game of Life*, also known simply as *Life*, is a cellular automaton (https://en.wikipedia.org/wiki/Cellular_automaton) devised by the British mathematician (https://en.wikipedia.org/wiki/Mathematician) John Horton Conway (https://en.wikipedia.org/wiki/John_Horton_Conway) in 1970.

The "game" is a zero-player game (https://en.wikipedia.org/wiki/Zero-player_game), meaning that its evolution is determined by its initial state, requiring no further input. One interacts with the Game of Life by creating an initial configuration and observing how it evolves, or, for advanced "players," by creating patterns with particular properties.

### Rules

The universe of the Game of Life is an infinite, two-dimensional orthogonal grid of square "cells," each of which is in one of two possible states, alive or dead, (or "populated" and "unpopulated" respectively). Every cell interacts with its eight neighbors, which are the cells that are horizontally, vertically, or diagonally adjacent. At each step in time, the following transitions occur:

* Any live cell with fewer than two live neighbors dies, as if caused by under population. (cell < 2 live neighbors = dies)
* Any live cell with two or three live neighbors lives on to the next generation. (cell with 2,3 live neighbors = survives)
* Any live cell with more than three live neighbors dies, as if by overpopulation. (cell > 3 live neighbors = dies)
* Any dead cell with exactly three live neighbors becomes a live cell, as if by reproduction.  (cell with 3 live neighbors = revives)

The initial pattern constitutes the seed of the system. The first generation is created by applying the above rules simultaneously to every cell in the seed—births and deaths occur simultaneously, and the discrete moment at which this happens is sometimes called a tick (in other words, each generation is a pure function of the preceding one). The rules continue to be applied repeatedly to create further generations.

## Understanding the problem

https://www.youtube.com/watch?v=0XI6s-TGzSs

Breaking Down The Game of Life

* *Universe* is an infinite 2 dimensional grid
* A *Cell* is represented by each square in the *Universe*
* A *Cell* can be either (Dead, or Alive) based on the rules of the game
* A *Cell* has 8 *Neighbors*
* A *Neighbor* is another *Cell*
* A *neighboring* cell is found horizontally, vertically, or diagonally adjacent
* The *initial state* of the game is given to the program
* Every time the universe ticks causing the effect of (born, live, die)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'game_of_life'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install game_of_life

## Usage

To see the demo run `ruby bin/run`

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/eliasjpr/game_of_life. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the GameOfLife project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/eliasjpr/game_of_life/blob/master/CODE_OF_CONDUCT.md).

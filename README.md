# Array#transitions

[![CircleCI](https://circleci.com/gh/KevinBongart/array-transitions.svg?style=shield)](https://circleci.com/gh/KevinBongart/array-transitions)
[![Code Climate](https://codeclimate.com/github/KevinBongart/array-transitions/badges/gpa.svg)](https://codeclimate.com/github/KevinBongart/array-transitions)
[![Test Coverage](https://codeclimate.com/github/KevinBongart/array-transitions/badges/coverage.svg)](https://codeclimate.com/github/KevinBongart/array-transitions/coverage)

List transitions found in an array while skipping duplicate elements:

```ruby
[].transitions
=> []

[1].transitions
=> []

[1, 2].transitions
=> [{ from: 1, to: 2 }]

[1, 2, 2, 2, 3, 3, 2].transitions
=> [{ from: 1, to: 2 }, { from: 2, to: 3 }, { from: 3, to: 2 }]
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'array-transitions'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install array-transitions

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/array-transitions. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

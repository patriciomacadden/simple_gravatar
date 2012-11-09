# SimpleGravatar [![Build Status](https://travis-ci.org/patriciomacadden/simple_gravatar.png)](https://travis-ci.org/patriciomacadden/simple_gravatar) [![Code Climate](https://codeclimate.com/badge.png)](https://codeclimate.com/github/patriciomacadden/simple_gravatar)

### Add gravatars to your ruby project as simple as possible.

## Installation

Add it to your Gemfile and run the `bundle` command:

```ruby
gem 'simple_gravatar'
```

## Getting started

In rails, you can add gravatars just using the `gravatar_url` helper method:

```ruby
<%= image_tag gravatar_url('patriciomacadden@gmail.com') %>
```

## Available options

All available options are the specified by [Gravatar API documentation](http://en.gravatar.com/site/implement/images/).

## Contributing

1. Fork it
2. Create a branch (`git checkout -b my_awesome_branch`)
3. Commit your changes (`git commit -am "Added some magic"`)
4. Push to the branch (`git push origin my_awesome_branch`)
5. Send pull request

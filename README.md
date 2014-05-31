# SimpleGravatar [![Build Status](http://img.shields.io/travis/patriciomacadden/simple_gravatar.svg)](https://travis-ci.org/patriciomacadden/simple_gravatar) [![Code Climate](http://img.shields.io/codeclimate/github/patriciomacadden/simple_gravatar.svg)](https://codeclimate.com/github/patriciomacadden/simple_gravatar) [![Code Climate Coverage](http://img.shields.io/codeclimate/coverage/github/patriciomacadden/simple_gravatar.svg)](https://codeclimate.com/github/patriciomacadden/simple_gravatar) [![Dependency Status](http://img.shields.io/gemnasium/patriciomacadden/simple_gravatar.svg)](https://gemnasium.com/patriciomacadden/simple_gravatar) [![Gem Version](http://img.shields.io/gem/v/simple_gravatar.svg)](http://badge.fury.io/rb/simple_gravatar)

Add gravatars to your ruby project as simple as possible.

## Installation

Add it to your Gemfile and run the `bundle` command:

```ruby
gem 'simple_gravatar'
```

## Usage

Include de module where you want to use it:

```ruby
class UserDecorator
  include SimpleGravatar

  def initialize(user)
    @user = user
  end

  def gravatar
    gravatar_url @user.email
  end
end
```

### Using in rails

Include the module in `ActionView::Base`, let's say, in
`config/initializers/simple_gravatar.rb`:

```ruby
ActionView::Base.send(:include, SimpleGravatar) if defined? ActionView::Base  
```

and use it anywhere in your views:

```ruby
<%= image_tag gravatar_url('patriciomacadden@gmail.com') %>
```

### Using in sinatra

Include the module as a helper:

```
helpers SimpleGravatar

get '/' do
  gravatar_url 'patriciomacadden@gmail.com'
end
```

## Available options

All available options are the specified by [Gravatar API documentation](http://en.gravatar.com/site/implement/images/).

## Contributing

1. Fork it
2. Create a branch (`git checkout -b my_awesome_branch`)
3. Commit your changes (`git commit -am "Added some magic"`)
4. Push to the branch (`git push origin my_awesome_branch`)
5. Send pull request

## License

See the [LICENSE](https://github.com/patriciomacadden/simple_gravatar/blob/master/LICENSE).

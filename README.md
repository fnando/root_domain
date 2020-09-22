# root_domain

If you ever worked with domain validation, you probably needed to extract the
root domain. This means that, given some hostname, remove subdomains from the original input, taking into account not only official Internet [TLDs](https://en.wikipedia.org/wiki/Top-level_domain), but. [SLDs](https://en.wikipedia.org/wiki/Second-level_domain) too.

With root_domain, you can easily extract the root domain, expanding any input from punycode into ASCII entries.

## Installation

Add this line to your application's Gemfile:

```ruby
gem "root_domain"
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install root_domain

## Usage

```ruby
require "root_domain"

RootDomain.call("www.example.com")
#=> example.com

RootDomain.call("www.example.com.br")
#=> example.com.br

RootDomain.call("myapp.apps.🤯.com")
#=> xn--oq9h.com
```

## Changelog

The changelog file is available at [CHANGELOG.md](https://github.com/fnando/root_domain/tree/main/CHANGELOG.md)

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/fnando/root_domain. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/fnando/root_domain/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the RootDomain project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/fnando/root_domain/blob/master/CODE_OF_CONDUCT.md).

# root_domain

[![Tests](https://github.com/fnando/root_domain/workflows/ruby-tests/badge.svg)](https://github.com/fnando/root_domain)
[![Code Climate](https://codeclimate.com/github/fnando/root_domain/badges/gpa.svg)](https://codeclimate.com/github/fnando/root_domain)
[![Gem](https://img.shields.io/gem/v/root_domain.svg)](https://rubygems.org/gems/root_domain)
[![Gem](https://img.shields.io/gem/dt/root_domain.svg)](https://rubygems.org/gems/root_domain)

If you ever worked with domain validation, you probably needed to extract the
root domain. This means that, given some hostname, you must remove subdomains
from the original input, taking into account not only official Internet
[TLDs](https://en.wikipedia.org/wiki/Top-level_domain), but
[SLDs](https://en.wikipedia.org/wiki/Second-level_domain) too.

With root_domain, you can easily extract the root domain, expanding any input
from punycode into ASCII entries.

## Installation

```bash
gem install root_domain
```

Or add the following line to your project's Gemfile:

```ruby
gem "root_domain"
```

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

## Maintainer

- [Nando Vieira](https://github.com/fnando)

## Contributors

- https://github.com/fnando/root_domain/contributors

## Contributing

For more details about how to contribute, please read
https://github.com/fnando/root_domain/blob/main/CONTRIBUTING.md.

## License

The gem is available as open source under the terms of the
[MIT License](https://opensource.org/licenses/MIT). A copy of the license can be
found at https://github.com/fnando/root_domain/blob/main/LICENSE.md.

## Code of Conduct

Everyone interacting in the root_domain project's codebases, issue trackers,
chat rooms and mailing lists is expected to follow the
[code of conduct](https://github.com/fnando/root_domain/blob/main/CODE_OF_CONDUCT.md).

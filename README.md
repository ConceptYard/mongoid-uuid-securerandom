# Mongoid::Uuid

Fork of [mongoid-uuid](https://github.com/badlamer/mongoid-uuid), using SecureRandom to generate random UUIDs instead
of the [UUID gem](https://github.com/assaf/uuid/)s #generate function.

## Installation

Add this line to your application's Gemfile:

    gem 'mongoid-uuid-securerandom'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mongoid-uuid-securerandom

## Usage

```ruby
require 'mongoid'
require 'mongoid/uuid'

class Model
  include Mongoid::Document
  include Mongoid::Uuid
end
```

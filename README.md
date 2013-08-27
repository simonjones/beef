# Beef

Beef up your Ruby core with these useful extensions

## Installation

Add this line to your application's Gemfile:

    gem 'beef'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install beef

## Usage

### String

#### To Boolean

  ```ruby
  "true".to_boolean
    => true
  "yes".to_b
    => true
  "no".to_b
    => false
  "false".to_b
    => false

  ```

### Hash

#### Method Access

Easy access to hash values via method calls of the keys.

  ```ruby
  hash = {one: 1, two: 2, three: 3, four: 4}

  # Value access
  hash.one
    => 1

  # Key query
  hash.one?
    => true
  hash.five?
    => false
  hash.five
    => NoMethodError

  # Value assignment
  hash.two = "new value"
  hash.two
    => "new value"
  ```

#### Deep Merge

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

# Beef (beefup)

Beef up your Ruby core with these useful extensions

## Installation

Add this line to your application's Gemfile:

  ```ruby
  gem 'beefup'
  ```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install beefup

And require it:
    
  ```ruby
  require 'beefup'
  ```

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
  "something that isn't falsey".to_boolean
    => true
  ```

#### Titleise

Smarter titleising of a string which ignores certain words (E.g an, a, is, of, etc..) when they don't appear at the beginning or the end of the string.

  ```ruby
  "is this an original string? yes it is".titleise
    => "Is This an Original String? Yes It Is"
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

Recursively merge two hashes

  ```ruby
  hash_1 = { :a => "a", :b => "b", :c => { :c1 => "c1", :c2 => { :c2a => "c2a" } } }
  hash_2 = { :a => 1, :c => { :c1 => 2, :c2 => { :c2b => "c2b" } } }
  hash_1.deep_merge(hash_2) 
    => { :a => 1, :b => "b", :c => { :c1 => 2, :c2 => { :c2a => "c2a", :c2b => "c2b" } } }
  ```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

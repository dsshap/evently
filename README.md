# Evently

  Event logging apparatus for mongoid. Storing events as they occur in the database. Helpful for data mining on events occuring in an application.

## Installation

Add this line to your application's Gemfile:

    gem 'evently'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install evently

## Usage

  Evently.record(user, 'signed up')
  Evently.record(user, 'enrolled in', subject)
  Evently.record(product, 'sold out')

  Evently.fetch(user)                               # all of a user's events
  Evently.fetch(user, 'enrolled in', subject)       # events where a user enrolled in a particular subject
  Evently.fetch(user, subject)                      # all events associated with a user and a particular subject
  Evently.fetch('signed up')                        # all signup events

##Active Admin


##Testing


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

# Zenvia Ruby

Bindings para api Zenvia v2 (Whatsapp only)

https://zenapi.zenvia.com/

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'zenvia-ruby'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install zenvia-ruby

## Usage

Add this to an intitializer
```ruby
Zenvia.configure do |c|
  c.token = 'xxxxxx'
  c.whatsapp_from = 'dent-sparrow'
end
```
Send text messages:

```ruby
Zenvia::WhatsApp.send_text(to: 'XXYYZZZZZZZZZ', message: 'first message')
```

Send template messages:

```ruby
Zenvia::WhatsApp.send_template(to: 'XXYYZZZZZZZZZ'
                               template_id: '7020afb0-0bf7-4c25-96a5-dc47383b7f7c',
                               fields: {"name": "aaaa",
                                        "productName": "bbbb",
                                        "deliveryDate": "ccc"})
```


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/cbonfa/zenvia-ruby.


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

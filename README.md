[![Gem](https://img.shields.io/gem/v/yandex_market_content.svg?style=flat-square)](https://rubygems.org/gems/yandex_market_content)
[![Build Status](https://travis-ci.org/sergey-chechaev/yandex_market_content.svg?branch=master)](https://travis-ci.org/sergey-chechaev/yandex_market_content)
[![Coverage Status](https://coveralls.io/repos/github/sergey-chechaev/yandex_market_content/badge.svg?branch=master)](https://coveralls.io/github/sergey-chechaev/yandex_market_content?branch=master)

# YandexMarketContent

Ruby gem для работы с контекстным Yandex API https://tech.yandex.ru/market/content-data/. Контентный API обеспечивает автоматизированное получение данных от сервиса Яндекс.Маркет. С помощью API внешние приложения могут получать сведения о моделях товаров, предложениях на них и магазинах, размещающихся на Яндекс.Маркете.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'yandex_market_content'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install yandex_market_content

## Usage

Configure gem credentials 

```ruby
 YandexMarketContent.configure do |config|
   config.authorization_token = 'authorization token'
 end
```
or

```ruby
  client = Yandex::Market::Client.new(token: 'test') 
```
Make request

```ruby
  client = Yandex::Market::Client.new(token: 'test') 
  result = client.regions(213)
  result.regions
  # => {"status"=>"OK", "context"=> {"region"=>{"id"=>225, "name"=>"Россия", "type"=>"COUNTRY", "childCount"=>11, "country"=>{"id"=>225, "name"=>"Россия", "type"=>"COUNTRY", "childCount"=>11}},....
  result.status
  # => "OK"
  result[:status]
  # => "OK"
  result["status"]
  # => "OK"
  result.regions.first.country.name
  # => "Россия"
  client.regions_children(3, {page: 2})
  # => {"status"=>"OK","context"=>{"region"=>{"id"=>225, "name"=>"Россия", "type"=>"COUNTRY", "childCount"=>11, "country"=>{"id"=>225, "name"=>"Россия","type"=>"COUNTRY", "childCount"=>11}},.....,"regions"=> [{"id"=>10705, "name"=>"Курская область", "type"=>"SUBJECT_FEDERATION", "childCount"=>35, "country"=>{"id"=>225, "name"=>"Россия", "type"=>"COUNTRY", "childCount"=>11}},....]}
```


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org/gems/yandex_market_content).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/sergey-chechaev/yandex_market_content.



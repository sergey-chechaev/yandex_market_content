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
  # => {"status"=>"OK",
 "context"=>
  {"region"=>{"id"=>225, "name"=>"Россия", "type"=>"COUNTRY", "childCount"=>11, "country"=>{"id"=>225, "name"=>"Россия", "type"=>"COUNTRY", "childCount"=>11}}
   "currency"=>{"id"=>"RUR", "name"=>"руб."},
   "page"=>{"number"=>2, "count"=>9, "total"=>3},
   "id"=>"1496680026151/332e31b81b10917461e6ff759910473f",
   "time"=>"2017-06-05T19:27:06.154+03:00",
   "marketUrl"=>"https://market.yandex.ru?pp=1001&clid=2298380&distr_type=7"},
 "regions"=>
  [{"id"=>10705, "name"=>"Курская область", "type"=>"SUBJECT_FEDERATION", "childCount"=>35, "country"=>{"id"=>225, "name"=>"Россия", "type"=>"COUNTRY", "childCount"=>11}},
   {"id"=>10712, "name"=>"Липецкая область", "type"=>"SUBJECT_FEDERATION", "childCount"=>22, "country"=>{"id"=>225, "name"=>"Россия", "type"=>"COUNTRY", "childCount"=>11}},
   {"id"=>10772, "name"=>"Орловская область", "type"=>"SUBJECT_FEDERATION", "childCount"=>29, "country"=>{"id"=>225, "name"=>"Россия", "type"=>"COUNTRY", "childCount"=>11}},
   {"id"=>10776, "name"=>"Рязанская область", "type"=>"SUBJECT_FEDERATION", "childCount"=>31, "country"=>{"id"=>225, "name"=>"Россия", "type"=>"COUNTRY", "childCount"=>11}},
   {"id"=>10795, "name"=>"Смоленская область", "type"=>"SUBJECT_FEDERATION", "childCount"=>29, "country"=>{"id"=>225, "name"=>"Россия", "type"=>"COUNTRY", "childCount"=>11}},
   {"id"=>10802, "name"=>"Тамбовская область", "type"=>"SUBJECT_FEDERATION", "childCount"=>32, "country"=>{"id"=>225, "name"=>"Россия", "type"=>"COUNTRY", "childCount"=>11}},
   {"id"=>10819, "name"=>"Тверская область", "type"=>"SUBJECT_FEDERATION", "childCount"=>45, "country"=>{"id"=>225, "name"=>"Россия", "type"=>"COUNTRY", "childCount"=>11}},
   {"id"=>10832, "name"=>"Тульская область", "type"=>"SUBJECT_FEDERATION", "childCount"=>28, "country"=>{"id"=>225, "name"=>"Россия", "type"=>"COUNTRY", "childCount"=>11}},
   {"id"=>10841, "name"=>"Ярославская область", "type"=>"SUBJECT_FEDERATION", "childCount"=>22, "country"=>{"id"=>225, "name"=>"Россия", "type"=>"COUNTRY", "childCount"=>11}}]}
```


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org/gems/yandex_market_content).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/sergey-chechaev/yandex_market_content.



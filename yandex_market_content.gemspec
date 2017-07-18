# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'yandex/market/content/version'

Gem::Specification.new do |spec|
  spec.name          = "yandex_market_content"
  spec.version       = Yandex::Market::Content::VERSION
  spec.authors       = ["Sergey Chechaev", "Alexey Ovsov"]
  spec.email         = ["kompotdrinker@gmail.com"]

  spec.summary       = %q{Сontent Yandex API Ruby gem}
  spec.description   = %q{The content API allows site owners, service developers and web-analytics analysts to extract information about products on the Yandex.Market. The API provides data from model cards (including prices, descriptions, photos and reviews), as well as complete information about stores and the availability of goods in them.}
  spec.homepage      = "https://github.com/sergey-chechaev/yandex_market_content"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_runtime_dependency 'faraday', ['>= 0.8', '< 0.12']
  spec.add_runtime_dependency 'hashie',     '>= 2.0'
end

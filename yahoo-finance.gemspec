$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
require 'yahoo_finance'

spec = Gem::Specification.new do |s|
  s.name = "yahoo-finance"
  s.version = YahooFinance::VERSION
  s.author = "Herval Freire"
  s.email = "herval@hervalicio.us"
  s.homepage = "http://hervalicio.us/blog"
  s.summary = "A wrapper to Yahoo! Finance market data (quotes and exchange rates) feed"

  s.files = Dir["lib/**/*"]
  s.require_paths = ["lib"]

  s.has_rdoc = false
  s.extra_rdoc_files = ["README.md", "HISTORY"]

  s.add_runtime_dependency("fastercsv") if RUBY_VERSION < "1.9"

  s.add_development_dependency 'rake', '~> 0.9.0'
end

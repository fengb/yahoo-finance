require 'ostruct'

class YahooFinance
  class DefaultOptions
    def self.all
      OpenStruct.new(
        :quotes => self.new(
          :columns => [:symbol, :last_trade_price, :last_trade_date, :change, :previous_close]
        ),
        :historical_quotes => self.new(
          :period => :daily
        )
      )
    end

    def initialize(directives)
      @hash = directives
    end

    def [](key)
      @hash[key]
    end

    def []=(key, value)
      @hash[key] = value
    end

    def each(&block)
      @hash.each(&block)
    end

    def merge_into!(options)
      self.each do |key, value|
        unless options.has_key?(key)
          options[key] = value
        end
      end
    end
  end
end

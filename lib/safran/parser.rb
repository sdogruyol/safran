require 'rss'
require 'open-uri'

class Parser
  attr_reader :url

  def initialize
    @url = 'http://www.safran.io/feed.rss'
  end

  def parse
    begin
      open(@url) do |rss|
        feed = RSS::Parser.parse(rss)
        feed.items.each do |item|
          print item
        end
      end
    rescue => e
      "Bir hata oluştu: #{e}"
    end

  end

  def print(item)
    p "#{item.title}"
    p "#{item.link}"
  end
end
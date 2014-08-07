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
          p "Item: #{item.title}"
        end
      end
    rescue
      "Bir hata #{@@gazete_id}, will ignore: #{e}"
    end

  end
end
# Class for parsing rss
class ParsingsController < ApplicationController
  def index
    @parsings = []
    page = Nokogiri::HTML(open('http://ai.libsyn.com/rss'))
    (0..2).each do |i|
      @parsings << { name: page.css('title')[i + 2].text,
                     source: page.css('enclosure')[i]['url'] }
    end
  end
end

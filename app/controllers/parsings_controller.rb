require 'rubygems'
require 'nokogiri'
require 'open-uri'
# Class for parsing rss
class ParsingsController < ApplicationController
  # GET /parsings
  # GET /parsings.json
  def index
    # @parsings = Parsing.all
   @parsings = []
    page = Nokogiri::HTML(open('http://ai.libsyn.com/rss'))
    (0..2).each do |i|
      @parsings << page.css('enclosure')[i]['url']
    end
    puts @parsings.to_s
  end
end

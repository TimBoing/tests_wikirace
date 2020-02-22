require 'open-uri'
require 'nokogiri'


class PagesController < ApplicationController

  def index
    @url = "https://fr.wikipedia.org/wiki/wagon"
    @html_doc = Nokogiri::HTML(open(@url), nil, 'utf-8')
  end
end

require "nokogiri"
require "open-uri"
require_relative "./foundation.rb"


class Scraper2
    URL = "https://makeup-api.herokuapp.com/api/v1/products/315"

    def self.scrape_foundations
        foundation_doc = Nokogiri::HTML(open(URL))
        foundation_array = foundation_doc.css(".container").text[56, 620]
        puts foundation_array

    end
end

Scraper2.scrape_foundations

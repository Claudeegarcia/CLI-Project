require "nokogiri"
require "open-uri"
require_relative "./lipstick.rb"


class Scraper3
    URL = "https://makeup-api.herokuapp.com/api/v1/products/763"

    def self.scrape_lipsticks
        lipstick_doc = Nokogiri::HTML(open(URL))
        lipstick_array = lipstick_doc.css(".container").text[0, 600]
        puts lipstick_array

    end
end

Scraper3.scrape_lipsticks

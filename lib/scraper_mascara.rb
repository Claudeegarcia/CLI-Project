require "nokogiri"
require "open-uri"
require_relative "./mascara.rb"


class Scraper4
    URL = "https://makeup-api.herokuapp.com/api/v1/products/704"

    def self.scrape_mascara
        mascara_doc = Nokogiri::HTML(open(URL))
        mascara_array = mascara_doc.css(".product_single").text[20, 600]
        puts mascara_array

    end
end

Scraper4.scrape_mascara

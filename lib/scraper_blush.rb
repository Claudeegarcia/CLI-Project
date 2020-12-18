require "nokogiri"
require "open-uri"
require_relative "./blush.rb"


class Scraper
    URL = "https://makeup-api.herokuapp.com/api/v1/products/776"

    def self.scrape_overall
        doc = Nokogiri::HTML(open(URL))
        blush_array = doc.css(".product_single").text
        blush_brand = blush_array[17, 49]
        blush_price = blush_array[56,60]
        blush_colors = blush_array[185, 793]
        blush_description = blush_array[995, 1000]     
        Blush.new(name: "Blush,", blush_brand: blush_brand, blush_price: blush_price, blush_colors: blush_colors, blush_description: blush_description)
        puts blush_array

    end 
    
end
Scraper.scrape_overall

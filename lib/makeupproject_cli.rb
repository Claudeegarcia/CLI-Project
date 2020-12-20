require_relative "makeupproject_cli/version"
require 'open-uri'
require 'nokogiri'

module MakeupprojectCli
  class Error < StandardError; end
  # Your code goes here...
end

require_relative "makeupproject_cli/cli"
require_relative "./blush.rb"
require_relative "./foundation.rb"
require_relative "./lipstick.rb"
require_relative "./mascara.rb"
require_relative "./scraper_blush.rb"
require_relative "./base2.rb"
require_relative "./base3.rb"
require_relative "./base4.rb"

#!/usr/bin/evn ruby
require 'net/http'
require 'open-uri'
require 'nokogiri'
# The main climagic driver
class CliMagic
    # Get command of the day from climagic
    #
    # Example:
    #   >> CliMagic.cmd()
    #   => "while true; do date; printf "\033[A"; sleep 1; done" 
    def self.cmd()
        # Gets the command of the day 
        cmd_url = 'http://www.climagic.org/'
        cmd_selector = "tt" # Hope this remians ;) 
        page = Nokogiri::HTML(open(cmd_url).read)
        page.css(cmd_selector).text
    end
end


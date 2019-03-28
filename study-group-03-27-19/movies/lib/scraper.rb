require 'open-uri'
require 'nokogiri'

class Scraper
  IMDB = "https://www.imdb.com/"
  
  def self.scrape_imdb
    html = open(IMDB)
    doc = Nokogiri::HTML(html)
    doc.css(".rhs-body")[0].css(".rhs-row").each do |movie|
      title = movie.css(".title").text.strip
      movie = Movie.new(title)
      movie.save
    end
  end
  
  
end
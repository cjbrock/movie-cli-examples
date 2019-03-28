require 'pry'

class Cli
  
  def run
    puts "Hi there!"
    puts "What would you like to see this weekend?"
    puts "Please select a movie below:"
    Scraper.scrape_imdb
    display_movies
  end
  
  def display_movies
    Movie.all.each.with_index(1) do |movie, i|
      puts "#{i}. #{movie.title}"
    end
  end
  
end
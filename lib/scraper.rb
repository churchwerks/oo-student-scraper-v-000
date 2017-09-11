require 'nokogiri'
require 'pry'
require_relative './student.rb'
class Scraper
  def self.scrape_index_page(index_url)
    student_site = Nokogiri::HTML(open(index_url))
    students = []
    student_site.css("div.student-card").each do |card|
      #binding.pry
      student_profile_link = card.css("a").attribute("href").value
      student_name = card.css(".student-name").text
      student_location = card.css(".student-location").text
      students << {name: student_name, location: student_location, profile_url: student_profile_link}
    end
    students
  end
  def self.scrape_profile_page(profile_url)
    profile_page = Nokogiri::HTML(open(profile_url))
    student = {}
    profile_page.css().each do |link|
      binding.pry
      twitter = link.css()
      linkedin = link.css()
      github = link.css()
      blog = link.css()
      profile_quote = link.css()
      bio = link.css()
      student <<
    end
    student
  end

end

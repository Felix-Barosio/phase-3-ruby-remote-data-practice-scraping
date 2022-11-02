require 'nokogiri'
require 'open-uri'
require 'pry'

html = open("https://flatironschool.com/")

doc = Nokogiri::HTML(html)
headings = doc.css('.heading-financier').text.strip

courses = doc.css('.heading-20-semibold.color-black.card-title-tl')

courses.each do |course|
  puts course.text.strip
end



# puts courses.text.strip

# binding.pry
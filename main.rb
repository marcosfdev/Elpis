require 'rubygems'
require 'nokogiri'

doc = Nokogiri::HTML(open("http://blog.shopittome.com/"))

doc.xpath('//h2/a[@rel = "bookmark"]').each_with_index do |header, i|
  puts i+1
  puts " Title: #{header.text}"
  puts "  Image 1: #{header.xpath('following::img[1]')[0]["src"]}"
  puts "  Image 2: #{header.xpath('following::img[2]')[0]["src"]}"
end
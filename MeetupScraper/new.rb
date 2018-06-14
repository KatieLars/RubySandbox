require_relative "./event"
require 'pry'

#Event.new("https://www.meetup.com/ChicagoRuby/events/249198492/")
class NewList #contain all the output (puts)
  def call #boolean--true if food
    #scrape over meetup list, grab a list of event urls url_list
    doc = Nokogiri::HTML(open("https://www.meetup.com/"))
    binding.pry
    url_array = doc.css('')
    #event_list.each do |event|

    Event.new("https://www.meetup.com/ChicagoRuby/events/249198492/")

  end

  def food? #determines what has food--returns boolean
  end

end

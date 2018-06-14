require 'open-uri'
require 'pry'
require 'nokogiri'

class Event
  attr_reader :title, :date, :place, :time, :address, :url

  def initialize(url)
    doc = Nokogiri::HTML(open("#{url}"))
    info = doc.css('.event-description')
    if info.inner_text.include?(' food ') #create an event
      @title = doc.css('h1.pageHead-headline.text--pageTitle').inner_text
      @date = doc.at_css('span.eventTimeDisplay-startDate span').inner_text
      @place = doc.css('address p:first-child').inner_text
      @address = doc.css('address p.venueDisplay-venue-address.text--secondary.text--small').inner_text
      @url = url
      @time = doc.css('span.eventTimeDisplay-startDate-time').inner_text
      binding.pry

    end
    self
    # event_array = doc.css("div.calendar_result div.views-row")

  end

  def food? #boolean--true if food

  end

  def output #will puts out the event information

  end
end

require_relative '../config/environment.rb'
require_relative '../app/models/BloodOaths.rb' 
require_relative '../app/models/cults.rb' 
require_relative '../app/models/cults.rb'

def reload
  load 'config/environment.rb'
end

#def initialize(name, location, founding_year, slogan)
a = Cult.new("Headbangers", "Toledo", "1866", "BANG YER HEAD!")
b = Cult.new("The Warriors", "NYC", "1979", "Hey Warrrrriorrrrrsss!")
c = Cult.new("Heavens Gate", "Wyoming", "1995", "Don't drink the koolaid")
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
require_relative '../config/environment.rb'
require_relative '../app/models/BloodOaths.rb' 
require_relative '../app/models/cults.rb' 
require_relative '../app/models/cults.rb'

def reload
  load 'config/environment.rb'
end

#def initialize(name, location, founding_year, slogan)
a = Cult.new("Headbangers", "Toledo", "1866", "BANG YER HEAD!")
b = Cult.new("The Warriors", "Chicago", "1979", "Hey Warrrrriorrrrrsss!")
c = Cult.new("Heavens Gate", "Chicago", "1995", "Don't drink the koolaid")

#initialize(name, age, life_motto)
person1 = Follower.new("Rose_Tyler", 24, "Bad Wolf")
person2 = Follower.new("Jamie_McKinnon", 30, "Whatever")
person3 = Follower.new("Jack_Harkness", 100000, "Hi, I'm Capt Jack")
person3.join_cult(c) 
person4 = Follower.new("Jamie Kennedy", 4, "I'm the worst.")
person5 = Follower.new("Boo-Radley", 68, "...")
person6 = Follower.new("Smokin' Joe Fusion", 55, "Hi there!")
person7 = Follower.new("Zoidberg", 46, "*disgruntled scream*")
person8 = Follower.new("The Archivist", 45, "Statment begins...")
person9 = Follower.new("Donald Trump", 86, "I'm a real piece of shit.")
person10 = Follower.new("Joe Biden", 85, "I'm really not much better.")
person11 = Follower.new("Ralph Nader", 76, "Doesn't anyone vote Green party?")
oath1 = BloodOath.new(a, person1)
oath2 = BloodOath.new(b, person2)
oath3 = BloodOath.new(a, person3)
oath4 = BloodOath.new(a, person4)
oath5 = BloodOath.new(b, person5)
oath6 = BloodOath.new(a, person6)
oath7 = BloodOath.new(b, person7)
oath8 = BloodOath.new(a, person8)
oath9 = BloodOath.new(b, person9)
oath10 = BloodOath.new(a, person10)
oath11 = BloodOath.new(a, person11)

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
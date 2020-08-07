require 'pry'
class Cult
    attr_reader  :name, :location, :founding_year, :slogan
    attr_accessor  :followers
    #initialize with name, location, founding year, slogan, follower array
  @@all = []
  def initialize(name, location, founding_year, slogan)
      @name = name
      @location = location
      @founding_year = founding_year
      @slogan = slogan
      @followers = []
      Cult.all << self

  end 

  def self.all
      @@all
  end 

  def recruit_follower(follower)
      @followers << follower
  end 

  def cult_population
      @followers.count 
  end 

  def self.find_by_name(name)
      self.all.find do |cult_instance|
          cult_instance.name == name
      end 
  end 

  def self.find_by_location(location)
    self.all.find do |cult_instance|
      cult_instance.location == location
    end 
  end

  def self.find_by_founding_year(founding_year)
      self.all.find do |cult_instance|
          cult_instance.founding_year == founding_year
      end 
  end

end #Class
#binding.pry
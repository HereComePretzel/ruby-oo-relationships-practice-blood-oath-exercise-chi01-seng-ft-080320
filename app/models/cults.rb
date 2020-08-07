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
      BloodOath.new(self, follower)
      self.find_followers
  end 

  def cult_population
      self.find_followers.count 
  end 

  def find_followers
     bloodoath_cults = BloodOath.all.select do |bloodoath_instance|
        bloodoath_instance.cult == self 
    end
        bloodoath_cults.map do |cult|
          cult.follower 
      end
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
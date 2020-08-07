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
  #find_followers method is a way of getting an array of all the followers to use in other methods
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

  def average_age
        face_of_boe  = self.find_followers.sum do |followers_instance| #face_of_boe = sum of names
            followers_instance.age 
        end 
        face_of_boe.to_f / self.cult_population 
    end

   def my_followers_mottos
        self.find_followers.map do |weeping_angel| #weeping_angel is follower instance
            weeping_angel.life_motto 
        end
    end

    def self.least_popular 
        smallest_cult_pop = 99999999999
        smallest_cult = ""
        self.all.each do |cult_instance|
            if cult_instance.cult_population < smallest_cult_pop 
                smallest_cult = cult_instance
                smallest_cult_pop = cult_instance.cult_population  
            end
        end
        smallest_cult 
    end

    # def self.most_common_location
    #     locations = self.all.map do |cult_instance|
    #         cult_instance.location
    #     end
    #     locations.max_by {|location| locations.count(location)}
    # end 



end #Class
#binding.pry
require 'pry'
class Follower
    attr_reader :name, :age, :life_motto, :cults
    @@all = []

    def initialize(name, age, life_motto)
        @name = name 
        @age = age 
        @life_motto = life_motto 
        @cults = []
        Follower.all << self 
    end

    def join_cult(cult)
        BloodOath.new(cult, self)
        followers = BloodOath.all.select do |bloodoath_instance|
            bloodoath_instance.follower == self 
        end
        followers.map do |follower|
            follower.cult 
        end
    end 

    def self.all 
        @@all 
    end 

    def self.of_a_certain_age(age)
        self.all.select do |follower_instance|
            follower_instance.age >= age 
        end 
    end 
#binding.pry
'this wont work'



end #of Follower class
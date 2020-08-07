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
        self.my_cults
    end 

    def self.all 
        @@all 
    end 

    def self.of_a_certain_age(age)
        self.all.select do |follower_instance|
            follower_instance.age >= age 
        end 
    end 

    def my_cults
        followers = BloodOath.all.select do |bloodoath_instance|
            bloodoath_instance.follower == self 
        end
        followers.map do |follower|
            follower.cult 
        end
    end 

    def my_cults_slogans
        self.my_cults.map do |cult_instances|
            cult_instances.slogan 
        end 
    end 
   
    # def self.most_common_location
    #     locations = self.all.map do |cult_instance|
    #         cult_instance.location
    #     end
    #     locations.max_by {|location| locations.count(location)}
    # end 
    
    def self.most_active_follower
        follower_count = 0
        active_follower = ""
        self.all.each do |follower_instance|
            if follower_instance.my_cults.count > follower_count
                active_follower = follower_instance
                follower_count = follower_instance.my_cults.count 
            end 
        end 
        active_follower
    end 

    def self.top_ten
        active_followers = self.all.sort {|follower_instance|follower_instance.my_cults.count}
            active_followers[0, 10]
    end 




        #binding.pry
'this wont work'



end #of Follower class
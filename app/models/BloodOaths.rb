require 'pry'
class BloodOath

    @@all = [] 
    attr_reader :initiation_date, :cult, :follower 
    def initialize(cult, follower)
        @initiation_date = Time.new 
        @cult = cult 
        @follower = follower 
        BloodOath.all << self
    end

    def self.all 
        @@all 
    end

    def initiation_date
        @initiation_date.to_s[0, 10]
    end 

    def self.first_oath 
        self.all[0].follower
    end 

    #binding.pry 
    'oh jeez'

end #of class
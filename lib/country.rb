class Country

    attr_accessor :name, :capital, :region, :subregion

    @@all =[]

    def initialize
        @@all << self
    end

    def self.all
        @@all
    end


end
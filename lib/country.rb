class Country

    attr_accessor :name, :capital, :region, :subregion, :flag
    @@all =[]

    def initialize
        @@all << self
    end

    def self.all
        @@all
    end

end
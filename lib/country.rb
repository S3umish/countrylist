class Country

    attr_accessor :name, :capital, :region, :subregion, :borders

    @@all =[]

    def initialize
        @@all << self
    end

    def self.all
        @@all
    end

    # def country
    #     country.all.select do |country|
    #      binding.pry
    #         country.name == self
    #     end
    # end



end
class API

    def self.fetch_countries
        url = "https://restcountries.eu/rest/v2/all"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        array_of_country = JSON.parse(response)

        array_of_country.each do |country_hash| 
         #binding.pry
         country= Country.new   
         country.name = country_hash["name"] 
         country.capital = country_hash["capital"] 
         country.region = country_hash["region"] 
         country.subregion = country_hash["subregion"] 
         #country.borders = country_hash["borders"] 
         
        end
        # :name, :capital, :region, :subregion, :borders
  
    end
end

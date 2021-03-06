class API

    def self.fetch_countries
        url = "https://restcountries.eu/rest/v2/all"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        array_of_country = JSON.parse(response)

        array_of_country.each do |country_hash| 
         country= Country.new   
         country.name = country_hash["name"] 
         country.capital = country_hash["capital"] 
         country.region = country_hash["region"] 
         country.subregion = country_hash["subregion"]
         country.flag = country_hash["flag"]
        end
  
    end
end

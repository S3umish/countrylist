class API

    def self.fetch_countries
        url = "https://restcountries.eu/rest/v2/all"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        array_of_country = JSON.parse(response)

        array_of_country.each do |country_hash| 
         #binding.pry
         country= Country.new   ##<Country:0x00007fd7af438490>
         country.name = country_hash["name"] ##=> "Afghanistan"
         country.capital = country_hash["capital"] ##=> "Kabul"
         country.region = country_hash["region"] ##=> Asia"
         country.subregion = country_hash["subregion"] ##=>"Southern Asia
         country.borders = country_hash["borders"] ##=>["IRN", "PAK", "TKM", "UZB", "TJK", "CHN"]

         ##country =>>#<Country:0x00007fd7af438490 @borders=["IRN", "PAK", "TKM", "UZB", "TJK", "CHN"],
                                             #@capital="Kabul", @name="Kabul", @region="Southern Asia">
         ###  pry(API)> country
         # => #<Country:0x00007fd7af438490
         # @borders=["IRN", "PAK", "TKM", "UZB", "TJK", "CHN"],
         # @capital="Kabul",
         # @name="Afghanistan",
         # @region="Asia",
         # @subregion="Southern Asia">
                
        end


        # :name, :capital, :region, :subregion, :borders
  
    end
end

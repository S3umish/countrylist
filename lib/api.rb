class API

    def self.fetch_countries
        url = "https://restcountries.eu/rest/v2/all"
        #binding.pry
        uri = URI(url)
        response = Net::HTTP.get(uri)
        countries_hash = JSON.parse(response)

        array_of_countries = countries_hash

        #name
        #capital
        #region
        #currencies
        #languages

        # :name, :capital, :region, :currencies, :languages



    end
end

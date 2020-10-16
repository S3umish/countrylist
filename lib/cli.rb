class CLI

    def start
        puts "Welcome"
        API.fetch_countries
        self.menu
    end

    def menu
        # give user an option to see the list of the countries
         puts " Would you like to see the list of countries?"
         puts " Type 'yes' to continue or any other key to exit"

        user_input = gets.strip.downcase
        # if the user says yes

        if user_input == "yes" || user_input == "y"
             puts "Good choice!"
              #display the list
            display_list_of_countries

            ask_user_for_their_country_choice
       end
    end

    def display_list_of_countries
        # Access all the countries
        #binding.pry
        #print each one out
        Country.all.each.with_index(1) do |country, index|
            puts "#{index}. #{country.name}"
        end

    end

    def ask_user_for_their_country_choice
        #ask user for choice
        puts "Enter the number of the country you want to know more about"
        index = gets.strip.to_i - 1

        country_instance = Country.all[index]
        #binding.pry

    end





end
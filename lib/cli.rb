class CLI

    def start
    
        puts "Welcome to the Countrylist!"
        puts "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"
        puts "\n"
            API.fetch_countries
            self.menu
    
    end

    def menu
        # give user an option to see the list of the countries
         puts "Would you like to learn about different Countries."
         puts "Type 'yes' to continue or any other key to exit. "

        user_input = gets.strip.downcase

        # if the user says yes
        if user_input == "yes" || user_input == "y"
            sleep(1)
             puts"\n"   
             puts "Awesome!"

             sleep(2)
              #display the list
            display_list_of_countries
            
            ask_user_for_their_choice

            sleep(3)

            menu

        else
            puts "========================================="
            puts "Thank you for visiting the Countrylist !!"
            puts "========================================="

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

    def ask_user_for_their_choice
        #ask user for choice
        puts "Enter the number of the country you want to know more about, choose a number between 1 to 250."
        index = gets.strip.to_i - 1

        #index valid? number between 0 and 250
        until index.between?(0, Country.all.length - 1)
            # keep asking for user input
            puts "Sorry invalid input. Choose a valid number"
            index = gets.strip.to_i - 1
        end
    
        country_instance = Country.all[index]
        
        display_country_details(country_instance)
        
        #binding.pry

    end

    def display_country_details(country)
        #binding.pry
        sleep(1)
        puts "\n"
        puts country.name
        puts "\n"
        puts "Country Name:  " + country.name
        puts "\n"
        puts "Capital:  " + country.capital
        puts "\n"
        puts "Region:  " + country.region 
        puts "\n"
        puts "Subregion:  " + country.subregion
        puts "\n"
        puts "flag:  " + country.flag
        puts "\n"
        puts "\n"

    end

end
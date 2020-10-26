class CLI

    def start
    
        puts "Welcome to the Countrylist!" .red.bold
        puts "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*".red.bold
        puts "\n"
        API.fetch_countries
        self.menu
    
    end

    def menu
         puts "**  Would you like to learn about different Countries.  **" .blue.bold
         puts "\n"
         puts "**  Type 'yes' to continue or any other key to 'exit' **" .green .bold

        user_input = gets.strip.downcase

        if user_input == "yes" || user_input == "y"
            sleep(1)
             puts"\n"   
             puts "Awesome! Here's the list of Countries. ".blue

             sleep(2)
        
            display_list_of_countries
            puts "\n"
            ask_user_for_their_choice

            sleep(3)

            menu

        else
            puts "========================================="
            puts "Thank you for visiting the Countrylist !!" .cyan
            puts "========================================="
       end
    end

    def display_list_of_countries
        Country.all.each.with_index(1) do |country, index|
            puts "#{index}. #{country.name}"
        end

    end

    def ask_user_for_their_choice
        
        puts " ** Choose any number between 1 to 250 to learn about a Country. **".red.bold
        puts "\n"
        puts " Note : Countries are indexed alphabettically,for example 240. United States of America "

        index = gets.strip.to_i - 1

        until index.between?(0, Country.all.length - 1)
           
            puts "** Sorry invalid input. Choose a valid number between 1 to 250. **" .yellow
            index = gets.strip.to_i - 1
        end
    
        country_instance = Country.all[index]
        
        display_country_details(country_instance)
        
    end

    def display_country_details(country)
    
        sleep(1)
        puts "\n"
        puts country.name
        puts "\n"
        puts "Country Name:  ".cyan + country.name
        puts "\n"
        puts "Capital:  ".red + country.capital
        puts "\n"
        puts "Region:  ".cyan + country.region 
        puts "\n"
        puts "Subregion:  ".red + country.subregion
        puts "\n"
        puts "Flag:  ".cyan + country.flag
        puts "\n"
        puts "\n"

     end

end
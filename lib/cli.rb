class CLI

    def start
        puts "Welcome"
        API.fetch_countries
        #self.menu
    end

    # def menu
    #     # give user an option to see the list of the countries
    #     puts " Would you like to see the list of countries?"
    #     puts " Type 'yes' to continue or any other key to exit"

    #     user_input = gets.strip.downcase
    #     # if the user says yes

    #     if user_input == "yes" || user_input == "y"
    #         puts "Good choice!"
    #         # display the list
    #         display_list_of_countries
    #     end
    # end

    # def display_list_of_countries
    #     # Access all the countries
    
        

    # end



end
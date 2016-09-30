
=begin

The word to guess is represented by a row of dashes, representing each letter of the word.
The hangman word stored in an array or hash?
=end

class Hangman
 
 Profanity = ['Fuck','Shit','Ass','Cunt']
 Adjective = ['Foul','Repugnant','Swift','Fast'] 
 Noun = ['King','Queen','Prince','Princess']
 
 
        def self.start_game
          print "Welcome to Hangman V1 by Clueless! Please select which category of words do you want to use:   \n Profanity, Adjective, Noun "
          selection = gets.chomp
          case 
          when @selection = 'Profanity'
            puts 'You have selected profanity! '
            hangman
         when @selection = 'Adjective'
           puts 'You have selected Adjectives! '
        when @selection = 'Noun'
          puts 'You have selected nouns! '   
              hangman               
          end 
         end 

        def self.hangman_word_selection
       
         if @selection == 'Profanity'
           hangman_word = Profanity.sample
           #puts '_ ' * hangman_word.size
        end
 end
 
      def hangman_word_setup(hangman_word)
      hangman_word_array = hangman_word.chars.to_a
       total_tries = 5
       hangman_end = false
       while(hangman_end == false)
        puts "*" * 40
        puts 
        puts
        puts 'You have five tries to get the word correct. If you can guess the whole word do so but you only have one try. Or just guess letter by letter.'
        first_try = gets
        #Might have to split this up into a method.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  )
        
        puts "*" * 40
        
       
        
        
        
        
        
        
      end
      
      def hangman_loss
        puts ' +---+-
                   |   |
                   |   0
                   |   |\\
                   |   /\\
                  -+----------'
                  
      puts 'You lose!'            
      end
      
      
      def hangman_win
        
        puts 'You win.'
          end
      
      
 
 
  
  
  start_game
  
  
  
  end



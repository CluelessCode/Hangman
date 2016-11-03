
=begin

Need to prevent repeat answers that were already scored.




=end
require 'active_support'












class Hangman
 
 Profanity = ['fuck','shit','ass','cunt']
 Adjective = ['foul','repugnant','swift','fast'] 
 Noun = ['king','queen','prince','princess']
  
 
        def self.start_game
          print "Welcome to Hangman V1 by Clueless! Please select which category of words do you want to use:   \n Profanity, Adjective, Noun "
          @SELECTION= gets.chomp.downcase
          case 
          when @SELECTION == 'profanity'
            puts 'You have selected profanity! '
            hangman_word_selection
         when @SELECTION == 'adjective'
           puts 'You have selected Adjectives! '
            hangman_word_selection
        when @SELECTION == 'noun'
          puts 'You have selected nouns! '   
              hangman_word_selection
         end 
         end

        def self.hangman_word_selection
       
         if @SELECTION == 'profanity'
           hangman_word = Profanity.sample
           hangman_word_setup(hangman_word)
           #puts '_ ' * hangman_word.size
         elsif @SELECTION == 'adjective'
           hangman_word = Adjective.sample
           hangman_word_setup(hangman_word)
         elsif
                @SELECTION == 'noun'
           hangman_word = Noun.sample
           hangman_word_setup(hangman_word)
    
        end
 end
 
      def self.hangman_word_setup(hangman_word)
      hangman_word_array = hangman_word.chars.to_a
       @hangman_end = false
       @hangman_check = hangman_word_array.length
       #while(@hangman_end == false)
        #puts "*" * 40
        #puts 
        #puts
        puts 'You have five tries to get the word correct. If you can guess the whole word do so but you only have one try. Or just guess letter by letter.'
        p hangman_word_array
        total_tries = 5
        @correct_tries = 0
        game_check = true
        compare_array = []
        
        while game_check == true
          
       first_try = gets.chomp.downcase
       
        
        puts "#{total_tries} tries left."
        
       if(first_try == hangman_word_array[0] || first_try == hangman_word_array[1] || first_try == hangman_word_array[2] || first_try == hangman_word_array[3] || first_try == hangman_word_array[4])
         puts 'Check'
         @correct_tries += 1
          puts 'You have gotten it correct!'
        total_tries -= 1
        
        compare_array.push(first_try)
 elsif(first_try == hangman_word)
         puts 'You have completed the word! Congratulations you win!'
                  hangman_win
                      break
               #puts "*" * 40
               
             
  elsif(first_try != hangman_word)
          puts 'Incorrect.'
           total_tries -= 1
                  end
                  
if(compare_array.inspect == hangman_word_array.inspect)
          puts 'Congrats! You win!'
          hangman_win
          break;
                 end
        
 if(total_tries <= 0)
         puts 'You lose.'
         hangman_loss
         
         
         
         break;
       end
            end
                 end
        
  
      
      def self.hangman_loss
        puts ' +---+-
                   |   |
                   |   0
                   |   |\\
                   |   /\\
                  -+----------'
                  
      puts 'You lose!'            
      end
      
      
      def self.hangman_win
        
        puts 'NEED HANGMAN VICTORY POSE HERE.'
        
      end 

start_game

end

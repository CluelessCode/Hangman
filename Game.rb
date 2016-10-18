
=begin

The word to guess is represented by a row of dashes, representing each letter of the word.
The hangman word stored in an array or hash?
=end


class Hangman
 
 Profanity = ['fuck','shit','ass','cunt']
 Adjective = ['foul','repugnant','swift','fast'] 
 Noun = ['king','queen','prince','princess']
 
 
        def self.start_game
          print "Welcome to Hangman V1 by Clueless! Please select which category of words do you want to use:   \n Profanity, Adjective, Noun "
          @selection = gets.chomp.downcase
          case 
          when @selection == 'profanity'
            puts 'You have selected profanity! '
            hangman_word_selection
         when @selection == 'adjective'
           puts 'You have selected Adjectives! '
            hangman_word_selection
        when @selection == 'noun'
          puts 'You have selected nouns! '   
              hangman_word_selection
         end 
         end

        def self.hangman_word_selection
       
         if @selection == 'profanity'
           hangman_word = Profanity.sample
           hangman_word_setup(hangman_word)
           #puts '_ ' * hangman_word.size
         elsif @selection == 'adjective'
           hangman_word = Adjective.sample
           hangman_word_setup(hangman_word)
         elsif
                @selection == 'noun'
           hangman_word = Noun.sample
           hangman_word_setup(hangman_word)
    
        end
 end
 
      def self.hangman_word_setup(hangman_word)
      hangman_word_array = hangman_word.chars.to_a
       @hangman_end = false
       #while(@hangman_end == false)
        #puts "*" * 40
        #puts 
        #puts
        puts 'You have five tries to get the word correct. If you can guess the whole word do so but you only have one try. Or just guess letter by letter.'
        p hangman_word_array
        @total_tries = 0
        
        game_check = true
        
        while game_check == true
        first_try = gets.chomp.downcase
        
        
        
       if(first_try == hangman_word_array[0] || first_try == hangman_word_array[1] || first_try == hangman_word_array[2] || first_try == hangman_word_array[3] || first_try == hangman_word_array[4])
         puts 'Check'
         correct_tries += 1
         p correct_tries
         #correct tries equal to the number of chars in the given word check it.
        puts 'You have gotten it correct!'
        elsif(first_try == hangman_word)
         puts 'You have completed the word! Congratulations you win!'
                  hangman_win
                  break
         elsif(first_try != hangman_word_array)
         puts  'Wrong.'
                   @total_tries += 1
               #puts "*" * 40
          elsif(correct_tries == hangman_word_array.inspect)
                  puts 'done.'
                  break
 
         
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

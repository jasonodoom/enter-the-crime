class Suspect < ActiveRecord::Base
  has_many :interrogations

  def self.speak_to_suspect(suspect)
   if suspect == Suspect.all[1].name
     sleep 18;puts `clear`
     puts "Ana!"
     puts "Ana!"
   elsif suspect == Suspect.all[2].name
     sleep 18;puts `clear`
     puts "Nick: Good morning Detective #{Player.all.last.name.split[0]}. How can I help?"
     puts "Detective #{Player.all.last.name.split[0]}: I was told you were the one that found the body."
     puts "Nick: Yes, that is true."

    puts "*Pick a Response Number*"
    puts "
      [1] Did you see anything worth noting on the body?
      [2] What was the first thing you did after discovering the body?
     "
    response_one = gets.chomp
      if response_one == "1"
        puts "Nick: Nothing in particular... I was just shocked."
      elsif response_one == "2"
        puts "Nick: I called for my family... my sister and mother quickly responded"
      end
    puts "*Pick a Response Number*"
    puts "
      [1] Was there any strange behavior by your family in the days leading up to today?
      [2] Are you sure all you did was 'find' the body?
    "
    response_two = gets.chomp
    if response_two == "2"
      puts "Nick: ARE YOU ACCUSING ME OF MURDERING MY OWN FATHER?"
      puts "*Pick a Response Number*"
      puts "
        [1] Yes!
        [2] Not yet...
        "
      response_three = gets.chomp
      if response_three == "1"
        puts "Nick: THEN WE ARE DONE HERE DETECTIVE!"
      else
        puts "Nick: Okay..."
        puts "*Pick a Response Number*"
        puts "
          [1] So what were you watching on TV before the murder occured?
          [2] Anybody you know capable of this murder...?
        "

        response_six = gets.chomp
        if response_six == "1"
        puts "Nick: I'M FED UP WITH YOU SUSPECTING ME, PLEASE LEAVE!"
        Interrogation.choose_room
        elsif response_six == "2"
        puts "I apologize detective, but I'm tired of your questioning. Leave me to mourn..."
        Interrogation.choose_room
        end
      end

    elsif response_two == "1"
      puts "Nick: Honestly, my parents have been fighting, but that isn't 'strange behavior'... Life has been this way for the last few years."
      puts "*Pick a Response Number*"
      puts "
        [1] And why is that?
        [2] And how did that make you feel?
        "

      response_four = gets.chomp
      puts "Nick: Father hasn't been very invested in the family lately. Around the time I began college, so I didn't feel the affect much... Mom tells me he became distant and she... she wasn't happy."
      puts "*Pick a Response Number*"
      puts "
        [1] Do you believe your mom could be capable of...?
        [2] Why do you believe he became distant?
        "
      response_five = gets.chomp
      if response_five == "1"
        puts "Nick: No! My mother wouldn't do that. Ever. Sorry detective, I know nothing else."
      elsif response_five == "2"
        puts "My mother suspects he may have fallen out of love... maybe beginning to see somebody else... but I don't believe it."
      end

      response_four = gets.chomp
      puts "Nick: Father hasn't been very invested in the family lately, around the time I began college. So I didn't feel the affect much... Mom tells me he became distant and she... she wasn't happy."
      puts "*Pick a Response Number*"
      puts "
      [1] Do you believe your mom could be capable of...?
      [2] Why do you believe he became distant?
      "
      response_five = gets.chomp
      if response_five == "1"
        puts "Nick: No!! My mother wouldn't do that... ever. Sorry detective, I know nothing else."
        Interrogation.choose_room
      elsif response_five == "2"
        puts "My mother suspects he may have fallen out of love... maybe beginning to see somebody else... but I don't believe it."
        Interrogation.choose_room
      end

    end

   elsif suspect == Suspect.all[3].name
     sleep 18;puts `clear`
     puts "Jodie: Hello Detective..."
     puts "*Pick a Response Number*"
     puts "
       [1] Good afternoon. Is there anything you can tell me about your mother’s relationship with your father?
       [2] Good afternoon. Is there anything you can tell me about your brother's relationship with you father?
       "
       response_seven = gets.chomp
       if response_seven == "1"
         puts "Jodie: Mom and dad fight a lot but don't even think about it! My mother would never do this."
       elsif response_seven == "2"
         puts "Nick and dad were close... but they don't speak much now that he's in school."
       end
       puts "*Pick a Response Number*"
       puts "
         [1] When your parents disagreed, what kind of disagreements would they have?
         [2] Were you close to your dad growing up?
         "
         response_eight = gets.chomp
         if response_eight == "1"
           puts "Jodie: Nothing specific... they just lost that spark, ya know?"
         elsif response_eight == "2"
           puts "Jodie: We were all close... a few years, everything changed. My brother went to school and my parents kinda drifted apart."
         end
         puts "*Pick a Response Number*"
         puts "
           [1] Any specific reason your parents would 'drift'?
           [2] So what were you doing in the kitchen?
           "
           response_nine = gets.chomp
           if response_nine == "1"
             puts "Jodie: I don't know. I don't think so."
           elsif response_nine == "2"
             puts "Jodie: Making pasta for dinner."
           end
           puts "*Pick a Response Number"
           puts "
             [1] Have you or anybody in your family suspected your father of infedelity?
             [2] Are you sure you were in the kitchen?
             "
             response_ten = gets.chomp
             if response_ten == "1"
               puts "My brother and I had… We would never tell mother though. We didn’t want to break her heart… sorry detective, I know nothing else…"
               Interrogation.choose_room
             elsif response_ten == "2"
               puts "Are you suspecting me of… leave now, detective!"
               Interrogation.choose_room
             end
  else
    self.speak_to_suspect
  end

end

end

class Suspect < ActiveRecord::Base
  has_many :interrogations

  def self.speak_to_suspect(suspect)
   if suspect == Suspect.all[1].name
     puts"\n";puts "loading........";sleep 18;puts `clear`
     puts "Anna: Detective #{Player.all.last.name.split[0]}, I understand you need to do your job. And I would like to find justice for my
      husband. But it is too early and I don't know if I can be of any help at this time. This is simply too much for me to handle right
      now."
     puts "Detective #{Player.all.last.name.split[0]}: I understand Mrs. Cthulu but the law is the law. The quicker we get this out of the way,
     the quicker you will have some closure.
     "
     puts "Anna: Fine. Then ask what you want to know and please leave."
     puts "\n"
     puts "*Pick a Response Number*"
     puts "
      [1] How was your relationship with your husband?
      [2] Where were you the night your husband was murdered?
     "
     response_eleven = gets.chomp
       if response_eleven == "1"
         puts `clear`
         puts "Anna: Steven cheated on me. We've been married for 45 years and he cheated on me. More than once. I'd forgive him but he'd only
         go back and do it again. He believed that he was somehow allowed to cheat on me. Eventually, I stopped forgiving him. But I didn't want
          to tear my family apart. So I stayed despite this and didn't seek a divorce. His death is his karma. Serves him right. I hope he rots
          in Hell."
       elsif response_eleven == "2"
         puts `clear`
         puts "Anna: I was in the kitchen, making dinner."
       end
     puts "\n"
     puts "*Pick a Response Number*"
     puts "
       [1] ...............
       [2] I understand you're grieving Mrs. Cthulu, but your husband was murdered.
       [3] Who was in the kitchen with you?
       "
       response_twelve = gets.chomp
       if response_twelve == "1"
         puts `clear`
         puts "Anna: Well? Are we done?"
         sleep 5
         puts "Detective #{Player.all.last.name.split[0]}: Yes, we're done. Thank you for your help Mrs. Cthulu. Feel better."
         puts""
         puts""
         Interrogation.set_complete(2)
         sleep 2;puts "\n";puts "loading........"; sleep 10; puts `clear`
         Interrogation.new_menu_if_1
       elsif response_twelve == "2"
         puts `clear`
         puts "Anna: Precisely. MY HUSBAND. So don't preach at me! Are we done or are going to keep reminding me of the obvious?"
         sleep 5
         puts "Detective #{Player.all.last.name.split[0]}: I didn't mean to upset you. We're done. I thank you for your time."
         puts""
         puts""
         Interrogation.set_complete(2)
         sleep 2;puts "\n";puts "loading........"; sleep 10; puts `clear`
         Interrogation.new_menu_if_1
       elsif response_twelve == "3"
         puts `clear`
         puts "I was in the kitchen alone that evening."
         sleep 5
         puts""
         puts""
         Interrogation.set_complete(2)
         puts "Detective #{Player.all.last.name.split[0]}: Thank you for the information Mrs. Cthulu, please have a nice day."
         sleep 2;puts "\n";puts "loading........"; sleep 10; puts `clear`
         Interrogation.new_menu_if_1
       end

   elsif suspect == Suspect.all[2].name
     puts "\n";puts "loading........";sleep 18;puts `clear`
     puts "Nick: Good morning Detective #{Player.all.last.name.split[0]}. How can I help?"
     puts "Detective #{Player.all.last.name.split[0]}: I was told you were the one that found the body."
     puts "Nick: Yes, that is true."
     puts "\n"
     puts "*Pick a Response Number*"
     puts "
      [1] Did you see anything worth noting on the body?
      [2] What was the first thing you did after discovering the body?
     "
    response_one = gets.chomp
      if response_one == "1"
        puts `clear`
        puts "Nick: Nothing in particular... I was just shocked."
      elsif response_one == "2"
        puts `clear`
        puts "Nick: I called for my family... my sister and mother quickly responded."
      end
    puts "\n"
    puts "*Pick a Response Number*"
    puts "
      [1] Was there any strange behavior by your family in the days leading up to today?
      [2] Are you sure all you did was \"find\" the body?
    "
    response_two = gets.chomp
    if response_two == "2"
      puts `clear`
      puts "Nick: ARE YOU ACCUSING ME OF MURDERING MY OWN FATHER?"
      puts "\n"
      puts "*Pick a Response Number*"
      puts "
        [1] Yes!
        [2] Not yet...
        "
      response_three = gets.chomp
      puts `clear`
      if response_three == "1"
        puts `clear`
        puts "Nick: THEN WE ARE DONE HERE DETECTIVE!"
        puts ""
        puts ""
        Interrogation.set_complete(3)
        sleep 2;puts "\n";puts "loading........"; sleep 10; puts `clear`
        Interrogation.new_menu_if_0
      elsif response_three == "2"
        puts `clear`
        puts "Nick: Okay..."
        puts "\n"
        puts "*Pick a Response Number*"
        puts "
          [1] So what were you watching on TV before the murder occured?
          [2] Do you know anyone who may be capable of this crime?
        "
        response_six = gets.chomp
        if response_six == "1"
          puts `clear`
          puts "Nick: I'M FED UP WITH YOU SUSPECTING ME, PLEASE LEAVE!"
          puts ""
          puts ""
          Interrogation.set_complete(3)
          sleep 2;puts "\n";puts "loading........"; sleep 10; puts `clear`
          Interrogation.new_menu_if_0
        elsif response_six == "2"
          puts `clear`
          puts "I apologize detective, but I'm tired of your questioning. Leave me to mourn..."
          puts ""
          puts ""
          Interrogation.set_complete(3)
          sleep 2;puts "\n";puts "loading........"; sleep 10; puts `clear`
          Interrogation.new_menu_if_0
        end
      end

    elsif response_two == "1"
      puts `clear`
      puts "Nick: Honestly, my parents have been fighting, but that isn't \"strange behavior\"... Life has been this way for the last few years."
      puts "\n"
      puts "*Pick a Response Number*"
      puts "
        [1] And why is that?
        [2] And how did that make you feel?
        "
      response_four = gets.chomp
      puts `clear`
      puts "Nick: Father hasn't been very invested in the family lately. Around the time I began college, so I didn't feel the affect much... Mom tells me he became distant and she... she wasn't happy."
      puts "\n"
      puts "*Pick a Response Number*"
      puts "
        [1] Do you believe your mom could be capable of...?
        [2] Why do you believe he became distant?
        "
      response_five = gets.chomp
      if response_five == "1"
        puts `clear`
        puts "Nick: No! My mother wouldn't do that. Ever. Sorry detective, I know nothing else."
        puts ""
        puts ""
        Interrogation.set_complete(3)
        sleep 2;puts "\n";puts "loading........"; sleep 10; puts `clear`
        Interrogation.new_menu_if_0
      elsif response_five == "2"
        puts `clear`
        puts "Jodie: My mother suspects he may have fallen out of love... maybe beginning to see somebody else... but I don't believe it."
        puts "Jodie: I don't think my family is responsible for this... Sorry detective, leave me to mourn."
        puts ""
        puts ""
        Interrogation.set_complete(3)
        sleep 2;puts "\n";puts "loading........"; sleep 10; puts `clear`
        Interrogation.new_menu_if_0
      end

      response_four = gets.chomp
      puts "Nick: Father hasn't been very invested in the family lately, around the time I began college. So I didn't feel the effect much... Mom tells me he became distant and she... she wasn't happy."
      puts "\n"
      puts "*Pick a Response Number*"
      puts "
      [1] Do you believe your mom could be capable of...?
      [2] Why do you believe he became distant?
      "
      response_five = gets.chomp
      if response_five == "1"
        puts `clear`
        puts "Nick: No!! My mother wouldn't do that... ever. Sorry detective, I know nothing else."
        puts ""
        puts ""
        Interrogation.set_complete(3)
        sleep 2;puts "\n";puts "loading........"; sleep 10; puts `clear`
        Interrogation.new_menu_if_2
      elsif response_five == "2"
        puts `clear`
        puts "Jodie: My mother suspects he may have fallen out of love... maybe beginning to see somebody else... but I don't believe it."
        puts ""
        puts ""
        Interrogation.set_complete(4)
        sleep 2;puts "\n";puts "loading........"; sleep 10; puts `clear`
        Interrogation.new_menu_if_2
      end

    end

   elsif suspect == Suspect.all[3].name
     puts "\n";puts "loading........";sleep 18;puts `clear`
     puts "Jodie: Hello Detective..."
     puts "\n"
     puts "*Pick a Response Number*"
     puts "
       [1] Good afternoon, Is there anything you can tell me about your mother’s relationship with your father?
       [2] Good afternoon, Is there anything you can tell me about your brother's relationship with you father?
       "
       response_seven = gets.chomp
       if response_seven == "1"
         puts `clear`
         puts "Jodie: Mom and dad fight a lot but don't even think about it! My mother would never do this."
       elsif response_seven == "2"
         puts `clear`
         puts "Jodie: Nick and dad were close... but they don't speak much now that he's in school."
       end
       puts "*Pick a Response Number*"
       puts "\n"
       puts "
         [1] When your parents disagreed, what kind of disagreements would they have?
         [2] Were you close to your dad growing up?
         "
         response_eight = gets.chomp
         if response_eight == "1"
           puts `clear`
           puts "Jodie: Nothing specific... they just lost that spark, ya know?"
         elsif response_eight == "2"
           puts `clear`
           puts "Jodie: We were all close... a few years, everything changed. My brother went to school and my parents kinda drifted apart."
         end
         puts "\n"
         puts "*Pick a Response Number*"
         puts "
           [1] Any specific reason your parents would \"drift\"?
           [2] So what were you doing in the kitchen?
           "
           response_nine = gets.chomp
           if response_nine == "1"
             puts `clear`
             puts "Jodie: I don't know. I don't think so."
           elsif response_nine == "2"
             puts `clear`
             puts "Jodie: Making pasta for dinner."
           end
           puts "\n"
           puts "*Pick a Response Number"
           puts "
             [1] Have you or anybody in your family suspected your father of infedelity?
             [2] Are you sure you were in the kitchen?
             "
             response_ten = gets.chomp
             if response_ten == "1"
               puts `clear`
               puts "Jodie: My brother and I had… We would never tell mother though."
               puts "Jodie: We didn’t want to break her heart… sorry detective, I know nothing else…"
               puts ""
               puts ""
               Interrogation.set_complete(4)
               sleep 2;puts "\n";puts "loading........"; sleep 10; puts `clear`
               Interrogation.new_menu_if_2
             elsif response_ten == "2"
               puts `clear`
               puts "Jodie: Are you suspecting me of… leave now, detective!"
               puts ""
               puts ""
               Interrogation.set_complete(4)
               sleep 2;puts "\n";puts "loading........"; sleep 10; puts `clear`
               Interrogation.new_menu_if_2
             end
  else
    self.speak_to_suspect
  end

end

end

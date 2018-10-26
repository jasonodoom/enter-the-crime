class Suspect < ActiveRecord::Base
  has_many :interrogations

  def self.speak_to_suspect(suspect)
  prompt = TTY::Prompt.new
   if suspect == Suspect.all[1].name # Ana
     puts"\n";puts "loading........";sleep 18;puts `clear`
     puts "Anna: Detective #{Player.all.last.name.split[0]}, I understand you need to do your job. And I would like to find justice for my
      husband. But it is too late and I don't know if I can be of any help at this time. This is simply too much for me to handle right
      now."
     puts "Detective #{Player.all.last.name.split[0]}: I understand Mrs. Cthulu but the law is the law. The quicker we get this out of the way,
     the quicker you will have some closure.
     "
     puts "Anna: Fine. Then ask what you want to know and please leave."
     puts "\n"

     case prompt.select("*Pick a Response Number*",["[1] How was your relationship with your husband?","[2] Where were you the night your husband was murdered?"])
      when "[1] How was your relationship with your husband?"
         puts `clear`
         puts Rainbow("Anna: Steven cheated on me. We've been married for 45 years and he cheated on me. More than once. I'd forgive him but he'd only go back and do it again. He believed that he was somehow allowed to cheat on me. Eventually, I stopped forgiving him. But I didn't want to tear my family apart. So I stayed despite this and didn't seek a divorce. His death is his karma. Serves him right. I hope he rots in Hell.").blue
       when "[2] Where were you the night your husband was murdered?"
         puts `clear`
         puts Rainbow("Anna: I was in the kitchen, making dinner.").blue
       end

     puts "\n"
     case prompt.select("*Pick a Response Number*",["[1] ...............","[2] I understand you're grieving Mrs. Cthulu, but your husband was murdered.","[3] And what were you doing during the murder?"])

        when "[1] ..............."
         puts `clear`
         puts Rainbow("Anna: Well? Are we done?").blue
         sleep 5
         puts "Detective #{Player.all.last.name.split[0]}: Yes, we're done. Thank you for your help Mrs. Cthulu. Feel better."
         puts""
         puts""
         Interrogation.set_complete(2)
         sleep 2;puts "\n";puts "loading........"; sleep 10; puts `clear`
         Interrogation.new_menu_if_1
       when  "[2] I understand you're grieving Mrs. Cthulu, but your husband was murdered."
         puts `clear`
         puts Rainbow("Anna: Precisely. MY HUSBAND. So don't preach at me! Are we done or are going to keep reminding me of the obvious?").blue
         sleep 5
         puts "Detective #{Player.all.last.name.split[0]}: I didn't mean to upset you. We're done. I thank you for your time."
         puts""
         puts""
         Interrogation.set_complete(2)
         sleep 2;puts "\n";puts "loading........"; sleep 10; puts `clear`
         Interrogation.new_menu_if_1
       when "[3] And what were you doing during the murder?"
         puts `clear`
         puts Rainbow("Anna: I was in the kitchen alone that evening.").blue
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
     puts Rainbow("Nick: Good morning Detective #{Player.all.last.name.split[0]}. How can I help?").red
     puts "Detective #{Player.all.last.name.split[0]}: I was told you were the one that found the body."
     puts Rainbow("Nick: Yes, that is true.").red
     puts "\n"

    case prompt.select("*Pick a Response Number*",["[1] Did you see anything worth noting on the body?", "[2] What was the first thing you did after discovering the body?"])

    when "[1] Did you see anything worth noting on the body?"
        puts `clear`
        puts Rainbow("Nick: Nothing in particular... I was just shocked.").red
    when "[2] What was the first thing you did after discovering the body?"
        puts `clear`
        puts Rainbow("Nick: I called for my family... my sister and mother quickly responded.").red
    end

    puts "\n"
    case prompt.select("*Pick a Response Number*",["[1] Was there any strange behavior by your family in the days leading up to today?","[2] Are you sure all you did was \"find\" the body?"])

      when "[2] Are you sure all you did was \"find\" the body?"
      puts `clear`
      puts Rainbow("Nick: ARE YOU ACCUSING ME OF MURDERING MY OWN FATHER?").red
      puts "\n"
        case prompt.select("*Pick a Response Number*",["[1] Yes!","[2] Not yet..."])

        when "[1] Yes!"
        puts `clear`
        puts Rainbow("Nick: THEN WE ARE DONE HERE DETECTIVE!").red
        puts ""
        puts ""
        Interrogation.set_complete(3)
        sleep 2;puts "\n";puts "loading........"; sleep 10; puts `clear`
        Interrogation.new_menu_if_0
        when "[2] Not yet..."
        puts `clear`
        puts Rainbow("Nick: Okay...").red
        puts "\n"
        end

        case prompt.select("*Pick a Response Number*",["[1] So what were you watching on TV before the murder occured?","[2] Do you know anyone who may be capable of this crime?"])

          when "[1] So what were you watching on TV before the murder occured?"
          puts `clear`
          puts Rainbow("Nick: I'M FED UP WITH YOU SUSPECTING ME, PLEASE LEAVE!").red
          puts ""
          puts ""
          Interrogation.set_complete(3)
          sleep 2;puts "\n";puts "loading........"; sleep 10; puts `clear`
          Interrogation.new_menu_if_0
          when "[2] Do you know anyone who may be capable of this crime?"
          puts `clear`
          puts Rainbow("Nick: I apologize detective, but I'm tired of your questioning. Leave me to mourn...").red
          puts ""
          puts ""
          Interrogation.set_complete(3)
          sleep 2;puts "\n";puts "loading........"; sleep 10; puts `clear`
          Interrogation.new_menu_if_0
          end

      when "[1] So what were you watching on TV before the murder occured?"
      puts `clear`
      puts Rainbow("Nick: Honestly, my parents have been fighting, but that isn't \"strange behavior\"... Life has been this way for the last few years.").red
      puts "\n"
      end

      case prompt.select("*Pick a Response Number*",["[1] And why is that?","[2] And how did that make you feel?"])
      when "[1] And why is that?"
      puts Rainbow("Nick: Father hasn't been very invested in the family lately. Around the time I began college, so I didn't feel the affect much... Mom tells me he became distant and she... she wasn't happy.").red
      when "[1] And why is that?"
      puts Ranbow("Nick: I hated it... he was very distance and my entire family suffered because of it").red
      end

      case prompt.select("*Pick a Response Number*",["[1] Do you believe your mom could be capable of...?","[2] Why do you believe he became distant?"])
      when "[1] Do you believe your mom could be capable of...?"
        puts `clear`
        puts Rainbow("Nick: No! My mother wouldn't do that. Ever. Sorry detective, I know nothing else.").red
        puts ""
        puts ""
        Interrogation.set_complete(3)
        sleep 2;puts "\n";puts "loading........"; sleep 10; puts `clear`
        Interrogation.new_menu_if_0
      when "[2] Why do you believe he became distant?"
        puts `clear`
        puts Rainbow("Nick: Mom suspected infedility but... I don't know. Leave me to mourn, detective").red
        puts ""
        puts ""
        Interrogation.set_complete(3)
        sleep 2;puts "\n";puts "loading........"; sleep 10; puts `clear`
        Interrogation.new_menu_if_0
      end

    elsif suspect == Suspect.all[3].name
     puts "\n";puts "loading........";sleep 18;puts `clear`
     puts Rainbow("Jodie: Hello Detective...").yellow
     puts "\n"

     case prompt.select("*Pick a Response Number*",["[1] Good afternoon, Is there anything you can tell me about your mother’s relationship with your father?","[2] Good afternoon, Is there anything you can tell me about your brother's relationship with you father?"])
     when "[1] Good afternoon, Is there anything you can tell me about your mother’s relationship with your father?"
         puts `clear`
         puts Rainbow("Jodie: Mom and dad fight a lot but don't even think about it! My mother would never do this.").yellow
      when "[2] Good afternoon, Is there anything you can tell me about your brother's relationship with you father?"
         puts `clear`
         puts Rainbow("Jodie: Nick and dad were close... but they don't speak much now that he's in school.").yellow
      end

      case prompt.select("*Pick a Response Number*",["[1] When your parents disagreed, what kind of disagreements would they have?","[2] Were you close to your dad growing up?"])
      when "[1] When your parents disagreed, what kind of disagreements would they have?"
           puts `clear`
           puts Rainbow("Jodie: Nothing specific... they just lost that spark, ya know?").yellow
      when "[2] Were you close to your dad growing up?"
           puts `clear`
           puts Rainbow("Jodie: We were all close... a few years, everything changed. My brother went to school and my parents kinda drifted apart.").yellow
      end

        case prompt.select("*Pick a Response Number*",["[1] Any specific reason your parents would \"drift\"?","[2] So what were you doing in the kitchen?"])
         when "[1] Any specific reason your parents would \"drift\"?"
             puts `clear`
             puts Rainbow("Jodie: I don't know. I don't think so.").yellow
           when "[2] So what were you doing in the kitchen?"
             puts `clear`
             puts Rainbow("Jodie: Making pasta for dinner.").yellow
           end

           case prompt.select("*Pick a Response Number",["[1] Have you or anybody in your family suspected your father of infedelity?","[2] Are you sure you were in the kitchen?"])
           when "[1] Have you or anybody in your family suspected your father of infedelity?"
               puts `clear`
               puts Rainbow("Jodie: My brother and I had… We would never tell mother though.").yellow
               puts Rainbow("Jodie: We didn’t want to break her heart… sorry detective, I know nothing else…").yellow
               puts ""
               puts ""
               Interrogation.set_complete(4)
               sleep 2;puts "\n";puts "loading........"; sleep 10; puts `clear`
               Interrogation.new_menu_if_2
             when "[2] Are you sure you were in the kitchen?"
               puts `clear`
               puts Rainbow("Jodie: Are you suspecting me of… leave now, detective!").yellow
               puts ""
               puts ""
               Interrogation.set_complete(4)
               sleep 2;puts "\n";puts "loading........"; sleep 10; puts `clear`
               Interrogation.new_menu_if_2
             end
      end

    else
    self.speak_to_suspect(suspect)
  end

end

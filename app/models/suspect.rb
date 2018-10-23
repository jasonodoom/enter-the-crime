class Suspect < ActiveRecord::Base
  has_many :interrogations

  def self.speak_to_suspect(suspect)
   if suspect == Suspect.all[1].name
     #
   elsif suspect == Suspect.all[2].name
     puts `clear`
     puts "Nick: Good morning Detective. How can I help...?"
     puts "Detective: I was told you were the one that found the body."
     puts "Nick: Yes, that is true."

    puts "*Pick a Response Number*"
    puts "
     1) Did you see anything worth noting on the body?
     2) What was the first thing you did after discovering the body?
     "
    response_one = gets.chomp
      if response_one == "1"
        puts "Nick: Nothing in particular... I was just shocked."
      elsif response_one == "2"
        puts "Nick: I called for my family... my sister and mother quickly responded"
      end
    puts "*Pick a Response Number*"
    puts "
    1) Was there any strange behavior by your family in the days leading up to today?
    2) Are you sure all you did was 'find' the body?
    "
    response_two = gets.chomp
    if response_two == "2"
      puts "Nick: Are you accusing me of murdering my own father?!"
      puts "*Pick a Response Number*"
      puts "
      1) Yes!
      2) Not yet..."

      response_three = gets.chomp
      if response_three == "1"
        puts "Nick: Then we are done here, detective!"
      else
        puts "Nick: Okay..."
        puts "*Pick a Response Number*"
        puts "
        1) So what were you watching on TV before the murder occured?
        2) Anybody you know capable of this murder...?
        "

        response_six = gets.chomp
        if response_six == "1"
        puts "Nick: I'm fed up with you suspecting me, please leave!"
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
      1) And why is that?
      2) And how did that make you feel?"

      response_four = gets.chomp
      puts "Nick: Father hasn't been very invested in the family lately. Around the time I began college, so I didn't feel the affect much... Mom tells me he became distant and she... she wasn't happy."
      puts "*Pick a Response Number*"
      puts "
      1) Would you believe you mom capable of...?
      2) Why do you believe he became distant
        "
      response_five = gets.chomp
      if response_five == "1"
        puts "Nick: No!! My mother wouldn't do that... ever. Sorry detective, I know nothing else."
      elsif response_five == "2"
        puts "My mother suspects he may have fallen out of love... maybe beginning to see somebody else... but I don't believe it."
      end

      response_four = gets.chomp
      puts "Nick: Father hasn't been very invested in the family lately. Around the time I began college, so I didn't feel the affect much... Mom tells me he became distant and she... she wasn't happy."
      puts "*Pick a Response Number*"
      puts "
      1) Would you believe you mom capable of...?
      2) Why do you believe he became distant
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
     #
  else
    self.speak_to_suspect
  end

end

end

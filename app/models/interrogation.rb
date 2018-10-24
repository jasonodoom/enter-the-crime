class Interrogation < ActiveRecord::Base
 belongs_to :players
 belongs_to :suspects

 def self.choose_room
  puts "loading....";sleep 4;puts `clear`;puts "There are three rooms."
  puts "In each room sits a memeber of the Cthulu family."

  puts "Choose a Room:

    [1] ☠ #{ Interrogation.all[0].room} ☠
    [2] ☠ #{Interrogation.all[1].room} ☠
    [3] ☠ #{Interrogation.all[2].room} ☠
  "
  puts "What room do you want to enter?"
  room_choice = gets.chomp

  if room_choice.downcase == Interrogation.all[0].room.downcase || Interrogation.all[0].room == "one" || room_choice.downcase == "1"
    puts "Entering #{Interrogation.all[0].room}"
    first_room = Interrogation.all[0]
    first_room.enter_room_one
  elsif room_choice.downcase == Interrogation.all[1].room.downcase || Interrogation.all[1].room == "one" || room_choice.downcase == "2"
    puts "Entering #{Interrogation.all[1].room}"
    second_room = Interrogation.all[1]
    second_room.enter_room_two
  elsif room_choice.downcase == "3" || room_choice.downcase == "three" || room_choice.downcase == "room 3"
    puts "Entering #{Interrogation.all[2].room}"
    third_room = Interrogation.all[2]
    third_room.enter_room_three
  else
    puts "INVALID OPTION"
    choose_room
  end
end

 def enter_room_one
   puts "In the #{Interrogation.all[0].room} sits #{Suspect.all[2].name} awaiting questioning."
   puts "#{Suspect.all[2].name} is the #{Suspect.all[2].family_relationship} of the Cthulu family."
   puts "You read his description in your notes: #{Suspect.all[2].description}."
   puts "He looks frustrated and unapproachable. But you've been in this game for a long time."

   Suspect.speak_to_suspect(Suspect.all[2].name)
 end

 def enter_room_two
   puts "In the #{Interrogation.all[1].room} sits #{Suspect.all[1].name} awaiting questioning."
   puts "#{Suspect.all[1].name} is the #{Suspect.all[1].family_relationship} of the Cthulu family."
   puts "You read her description in your notes: #{Suspect.all[1].description}."
   puts "She looks shaken and distraught. But you've been in this game for a long, long time."

   Suspect.speak_to_suspect(Suspect.all[1].name)
 end

 def enter_room_three
   puts "In the #{Interrogation.all[2].room} sits #{Suspect.all[3].name} awaiting questioning."
   puts "#{Suspect.all[3].name} is the #{Suspect.all[3].family_relationship} of the Cthulu family."
   puts "You read her description in your notes: #{Suspect.all[3].description}."
   puts "She looks saddened and helpless. But you've been in this game for a long, long, long time."

   Suspect.speak_to_suspect(Suspect.all[3].name)
 end

 def self.set_complete(id)
   Interrogation.find_by(suspect_id: id).tap do |interrogation|
   interrogation.complete = true
   interrogation.save
  end
 end

def self.no_avail
  puts `clear`;puts "ALL INVESTIGATIONS HAVE BEEN COMPLETED";sleep 2;puts `clear`;puts "RETURNING TO HQ......";sleep 6;puts `clear`
end

 def Interrogation.new_menu_if_0
   if Interrogation.all[0].complete == true && Interrogation.all[1].complete == true && Interrogation.all[2].complete == true
    Interrogation.no_avail
    Player.finale
   else
    puts "Choose a Room:

      [2] ☠ #{Interrogation.all[1].room} ☠
      [3] ☠ #{Interrogation.all[2].room} ☠

    "
     room_choice = gets.chomp
    if room_choice.downcase == Interrogation.all[1].room.downcase || Interrogation.all[1].room == "two" || room_choice.downcase == "2"
      puts "Entering #{Interrogation.all[1].room}"
      second_room = Interrogation.all[1]
      second_room.enter_room_two
    elsif room_choice.downcase == Interrogation.all[2].room.downcase || Interrogation.all[2].room == "three" || room_choice.downcase == "3"
      puts "Entering #{Interrogation.all[1].room}"
      third_room = Interrogation.all[2]
      third_room.enter_room_three
    else
      Interrogation.new_menu_if_0
    end
  end
 end

    def Interrogation.new_menu_if_1
      if Interrogation.all[0].complete == true && Interrogation.all[1].complete == true && Interrogation.all[2].complete == true
        Interrogation.o_avail
        Player.finale
      else
        puts "Choose a Room:

          [1] ☠ #{ Interrogation.all[0].room} ☠
          [3] ☠ #{Interrogation.all[2].room} ☠

          "

          room_choice_for_1 = gets.chomp

          if room_choice_for_1.downcase == Interrogation.all[0].room.downcase || Interrogation.all[0].room == "one" || room_choice.downcase == "1"
            puts "Entering #{Interrogation.all[0].room}"
            first_room = Interrogation.all[0]
            first_room.enter_room_one
          elsif  room_choice_for_1.downcase == Interrogation.all[2].room.downcase || Interrogation.all[2].room == "three" || room_choice.downcase == "3"
             puts "Entering #{Interrogation.all[2].room}"
             third_room = Interrogation.all[2]
             third_room.enter_room_three
          else
            self.new_menu_if_1
          end
      end
    end

    def self.new_menu_if_2
      if Interrogation.all[0].complete == true && Interrogation.all[1].complete == true && Interrogation.all[2].complete == true
        Interrogation.no_avail
        Player.finale
      else
      puts "Choose a Room:

        [1] ☠ #{ Interrogation.all[0].room} ☠
        [2] ☠ #{Interrogation.all[1].room} ☠
      "
      room_choice_for_2 = gets.chomp

      if room_choice_for_2.downcase == Interrogation.all[0].room.downcase || Interrogation.all[0].room == "one" || room_choice.downcase == "1"
        puts "Entering #{Interrogation.all[0].room}"
        first_room = Interrogation.all[0]
        first_room.enter_room_one
      elsif  room_choice_for_2.downcase == Interrogation.all[1].room.downcase || Interrogation.all[1].room == "two" || room_choice.downcase == "2"
         puts "Entering #{Interrogation.all[1].room}"
         second_room = Interrogation.all[1]
         second_room.enter_room_one
      else
        self.new_menu_if_2
      end
    end
  end


end

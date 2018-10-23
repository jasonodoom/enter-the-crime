class Interrogation < ActiveRecord::Base
 belongs_to :players
 belongs_to :suspects


 def enter_room_one
   puts "In the #{Interrogation.all[0].room} sits #{Suspect.all[1].name} awaiting questioning."
   puts "Suspect.all[1].name  is the  #{Suspect.all[1].family_relationship} of the Cthulu family."
   puts "You read her description in your notes #{Suspect.all[1].description}"
   puts "She looks scared and sad. But you've been in this game for a long time."
 end


 def choose_room
  puts "There are three rooms."
  puts "In each room sits a memeber of the Cthulu family."

  puts "Here are the rooms:

    #{Interrogation.all[0].room}
    #{Interrogation.all[1].room}
    #{Interrogation.all[2].room}
  "
 
  puts "What room do you want to enter?"
  room_choice = gets.chomp

  if room_choice.downcase == Interrogation.all[0].room.downcase || Interrogation.all[0].room == "one" || room_choice.downcase == "1"
    puts "Entering #{Interrogation.all[0].room}"
    enter_room_one
  elsif room_choice.downcase == Interrogation.all[1].room.downcase || Interrogation.all[1].room == "one" || room_choice.downcase == "2"
    puts "Entering #{Interrogation.all[1].room}"
    enter_room_two
  elsif room_choice.downcase == "3" || room_choice.downcase == "three" || room_choice.downcase == "room 3"
    puts "Entering #{Interrogation.all[2].room}"
    enter_room_three
  else
    puts "INVALID OPTION"
    choose_room
  end
 end 
  
end

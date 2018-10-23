class Interrogation < ActiveRecord::Base
 belongs_to :players
 belongs_to :suspects


 def enter_room_one
   puts "In the #{Interrogation.all[0].room} sits #{Suspect.all[1].name} awaiting questioning."
   puts "#{Suspect.all[1].name} is a #{Suspect.all[1].family_relationship} of the Cthulu family."
   puts " \n"*7
   puts "You read her description in your notes:\n" + "#{Suspect.all[1].description}"
   puts " \n"*7
   puts "She looks scared and sad." + "\nBut you've been in this game for a long time."
   first_suspect = Suspect.all[1].name
   Suspect.speak_to_suspect(first_suspect)
 end

 def enter_room_two
   puts "In the #{Interrogation.all[1].room} sits #{Suspect.all[2].name} awaiting questioning."
   puts "#{Suspect.all[2].name} is a #{Suspect.all[2].family_relationship} of the Cthulu family."
   puts " \n"*7
   puts "You read his description in your notes:\n" + "#{Suspect.all[2].description}"
   puts " \n"*7
   puts "He looks innocent. As if he didn't even know the man who had been murdered." + "\nBut you've been in this game for a long long time."
   second_suspect = Suspect.all[2].name
   Suspect.speak_to_suspect(second_suspect)
 end

 def enter_room_three
   puts "In the #{Interrogation.all[2].room} sits #{Suspect.all[3].name} awaiting questioning."
   puts "#{Suspect.all[3].name} is a #{Suspect.all[3].family_relationship} of the Cthulu family."
   puts " \n"*7
   puts "You read his description in your notes:\n" + "#{Suspect.all[3].description}"
   puts " \n"*7
   puts "She looks cheerful. As if she had not just loss her father to murder." + "\nBut you've been in this game for a long long long time."
   third_suspect = Suspect.all[3].name
   Suspect.speak_to_suspect(third_suspect)
 end

 def self.choose_room
  puts "There are three rooms."
  puts "In each room sits a memeber of the Cthulu family."

  puts "Here are the rooms:

   1)#{Interrogation.all[0].room}
   2)#{Interrogation.all[1].room}
   3)#{Interrogation.all[2].room}
  "

  puts "What room do you want to enter?"
  room_choice = gets.chomp

  if room_choice.downcase == self.all[0].room.downcase || self.all[0].room == "one" || room_choice.downcase == "1"
    puts "Entering #{self.all[0].room}....."
    sleep 7; puts `clear`
    first_room = self.all[0]
    first_room.enter_room_one
  elsif room_choice.downcase == self.all[1].room.downcase || self.all[1].room == "two" || room_choice.downcase == "2"
    puts "Entering #{self.all[1].room}....."
    sleep 7; puts `clear`
    second_room = self.all[1]
    second_room.enter_room_two
  elsif room_choice.downcase == "3" || room_choice.downcase == "three" || room_choice.downcase == "3"
    puts "Entering #{self.all[2].room}....."
    sleep 7; puts `clear`
    third_room = self.all[2]
    third_room.enter_room_three
  else
    puts "INVALID OPTION"
    choose_room
  end
end

end

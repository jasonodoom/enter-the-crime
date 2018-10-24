require_relative '../config/environment'

def art
  art = <<-EOS

  ▓█████  ███▄    █ ▄▄▄█████▓▓█████  ██▀███     ▄▄▄█████▓ ██░ ██ ▓█████     ▄████▄   ██▀███   ██▓ ███▄ ▄███▓▓█████
  ▓█   ▀  ██ ▀█   █ ▓  ██▒ ▓▒▓█   ▀ ▓██ ▒ ██▒   ▓  ██▒ ▓▒▓██░ ██▒▓█   ▀    ▒██▀ ▀█  ▓██ ▒ ██▒▓██▒▓██▒▀█▀ ██▒▓█   ▀
  ▒███   ▓██  ▀█ ██▒▒ ▓██░ ▒░▒███   ▓██ ░▄█ ▒   ▒ ▓██░ ▒░▒██▀▀██░▒███      ▒▓█    ▄ ▓██ ░▄█ ▒▒██▒▓██    ▓██░▒███
  ▒▓█  ▄ ▓██▒  ▐▌██▒░ ▓██▓ ░ ▒▓█  ▄ ▒██▀▀█▄     ░ ▓██▓ ░ ░▓█ ░██ ▒▓█  ▄    ▒▓▓▄ ▄██▒▒██▀▀█▄  ░██░▒██    ▒██ ▒▓█  ▄
  ░▒████▒▒██░   ▓██░  ▒██▒ ░ ░▒████▒░██▓ ▒██▒     ▒██▒ ░ ░▓█▒░██▓░▒████▒   ▒ ▓███▀ ░░██▓ ▒██▒░██░▒██▒   ░██▒░▒████▒
  ░░ ▒░ ░░ ▒░   ▒ ▒   ▒ ░░   ░░ ▒░ ░░ ▒▓ ░▒▓░     ▒ ░░    ▒ ░░▒░▒░░ ▒░ ░   ░ ░▒ ▒  ░░ ▒▓ ░▒▓░░▓  ░ ▒░   ░  ░░░ ▒░ ░
   ░ ░  ░░ ░░   ░ ▒░    ░     ░ ░  ░  ░▒ ░ ▒░       ░     ▒ ░▒░ ░ ░ ░  ░     ░  ▒     ░▒ ░ ▒░ ▒ ░░  ░      ░ ░ ░  ░
     ░      ░   ░ ░   ░         ░     ░░   ░      ░       ░  ░░ ░   ░      ░          ░░   ░  ▒ ░░      ░      ░
     ░  ░         ░             ░  ░   ░                  ░  ░  ░   ░  ░   ░ ░         ░      ░         ░      ░  ░
                                                                           ░
                                       ▲ Enter the Crime ▲
                                    (a game by Randy & Jason)
EOS

print art
end

def loader
  puts `clear`
  #queu theme music
art
menu
end

def reset
   Player.all.delete_all
end

def reset_menu
  puts "You chose choice [1]: RESET"
  puts "Continue?[y/n]"
  user_confirmation = gets.chomp
   if user_confirmation.downcase == "y"
     puts "Dropping all Players from the database....."
     reset
   else
     puts "INVALID COMMAND"
     sleep 5;`clear`
     art
     menu
   end
end

def character_profiles
end

def player_profile
end

def menu
  puts"
   MENU:
   [1] ☠ PLAY GAME ☠
   [2] ☠ CHARACTER PROFILES ☠
   [3] ☠ PLAYER PROFILE ☠
   [4] ☠ RESET ☠
   [5] ☠ QUIT ☠
  "
  puts "Please choose a menu option: [1][2][3][4][5]"
  user_input = gets.chomp
 if user_input == "[1]" || user_input.downcase == "one" || user_input == "1"
   start_game
 elsif user_input == "[2]" || user_input.downcase == "two" || user_input  == "2"
   character_profiles
 elsif user_input == "[3]" || user_input.downcase == "three" || user_input  == "3"
   player_profile
 elsif user_input == "[4]" || user_input.downcase == "four" || user_input  == "4"
   reset_menu
 end
end

def begin_investigation
  Interrogation.choose_room
end

def create_player(player_name, player_sex)
  Player.create(name: player_name, sex: player_sex)
end

def start_game
  puts `clear`
  puts "What is your name?"
  player_name = gets.chomp
  puts "What is you sex?[M/F]"
  player_sex = gets.chomp
  create_player(player_name, player_sex.upcase)
  puts `clear`

  puts "Welcome Detective #{player_name}"
  puts ""
  puts "loading........";sleep 4;puts " \n"*10;puts `clear`
  puts "Detective M: #{Player.all.last.name.split[0]}, we had a murder last night."
  puts "Detective M: #{Suspect.all.first.name}, a father of two, was killed in his home."
  puts "Detective M: We suspect foul play, but we want to be sure."
  puts "Detective M: Please question the family and then let us know who the killer is so justice can be served."
  puts ""
  puts ""
  puts "loading........";sleep 15;puts `clear`
   #queue music
   begin_investigation

end

def intro
  #queue music
puts `clear`
puts "It's a dark and stormy night. We find ourselves in an old Victorian home,
somewhere in Brooklyn, New York.

Unlike most evenings, this one was different.


Why? Because on this particular evening, a murder had been commited.

You are a detective, tasked with investigating this incident and finding the
killer in order to serve justice.

Do you accept this investigation and all associated risks?[y/n]"


user_choice = gets.chomp

if user_choice.downcase == "yes"|| user_choice.downcase == "y"
 puts "Then continue forward... "
 loader
elsif user_choice.downcase == "no" || user_choice.downcase == "n"
 puts "Then turn away..."
end
end

intro

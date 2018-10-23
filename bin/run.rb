require_relative '../config/environment'

def loader
  #queu theme music
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
menu
end

def menu
  "1) ☠ PLAY GAME ☠
   2) ☠ CHARACTER PROFILE ☠
   3) ☠ PLAYER PROFILE ☠
   4) ☠ QUIT ☠
  "
end

 def begin_investigation

end


def start_game
  loader
  puts "What is your name?"
  player_name = gets.chomp
  puts 'clear'

  puts "Welcome Detective #{player_name}"

  puts "M: #{player_name.split[0]}, we had a murder last night. #{suspect.victim}, a father was killed in his home."
  puts "M: We suspect foul play, but we want to be sure."
  puts "M: Please question the family and then let us know who the victim is, so justice can be served."
   #queue music

   begin_investigation

end

def intro
  #queue music
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
start_game
elsif user_choice.downcase == "no" || user_choice.downcase == "n"
 puts "Then turn away..."
end
end


intro

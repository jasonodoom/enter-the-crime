class Player < ActiveRecord::Base
  has_many :interrogations


def self.outro
  puts "\n"
  puts "loading...."
  sleep 10;
  puts `clear`
  puts "loading...."
  sleep 5;
  puts `clear`
  fin = <<-EOS
  █████▒██▓ ███▄    █
▓██   ▒▓██▒ ██ ▀█   █
▒████ ░▒██▒▓██  ▀█ ██▒
░▓█▒  ░░██░▓██▒  ▐▌██▒
░▒█░   ░██░▒██░   ▓██░
▒ ░   ░▓  ░ ▒░   ▒ ▒
░      ▒ ░░ ░░   ░ ▒░
░ ░    ▒ ░   ░   ░ ░
      ░           ░
EOS
print fin
sleep 11
puts `clear`
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
EOS
end

def self.finale
  puts "Detective M: Welcome back to HQ  Detective #{Player.all.last.name.split[0]}.\n"
  puts "Detective M: I know this investigation was exhausting.\n"
  puts "Detective M: But you're the best in the game. So please, tell us......\n"
  puts "loading...";sleep 13;puts `clear`
  puts "Detective M: Who murdered Steven Cthulu that evening?\n"

   puts "*Pick a Response Number*"
   puts "
     [1] Nick Cthulu.
     [2] Anna Cthulu.
     [3] Jodie Cthulu.
     [4] It was me.
     "

     player_response= gets.chomp
     if player_response == "1"
       puts "That Nick Cthulu. He was very off when I interviewed him. Angry outbursts and easily irritable, unrelated to the situation
       at hand. "
       self.outro
     elsif player_response == "2"
       puts "Anna, she admitted to me how Steven had cheated on her and that he deserved to be murdered. What a foolish thing to have done.
       She made this easy."
       self.outro
     elsif player_response == "3"
       puts "Jodie had told me she was in the kitchen the night of the murder which didn't add up to what her mother had said. "
       self.outro
     elsif player_response == "4"
      puts "I did it! I murdered Steven Cthulu! He had caught me and his wife together in bed. I panicked so I had to fix the situation.
      The guilt has been destroying me...."
      self.outro
     else
       puts "INVALID COMMAND"
       self.finale
     end
end

end

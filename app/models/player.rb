class Player < ActiveRecord::Base
  has_many :interrogations


def self.put_things_back
  ids = [2,3,4]
  ids.each do |id|
    Interrogation.find_by(suspect_id: id).tap do |interrogation|
      interrogation.completed = false
      interrogation.save
    end
    ids.each do |id|
    Suspect.find_by(id: id).tap do |suspect|
      suspect.guilty = false
      suspect.save
    end
  end
end
end

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
self.put_things_back
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
EOS
print art
sleep 10;puts `clear`
puts "END OF GAME. CASE CLOSED.";sleep 10;puts `clear`
end

def self.make_guilty(id)
    Suspect.find_by(id: id).tap do |suspect|
    suspect.guilty = true
    suspect.save
   end
end

  def self.make_player_guilty
  player_id = Player.all.last.id
  Player.find_by(id: player_id).tap do |player|
    player.guilty = true
    player.save
  end
end

def self.finale
  puts "Detective M: Welcome back to HQ  Detective #{Player.all.last.name.split[0]}.\n"
  puts "Detective M: I know this investigation was exhausting.\n"
  puts "Detective M: But you're the best in the game. So please, tell us......"
  puts "\n"
  puts "loading...";sleep 13;puts `clear`
  puts "Detective M: Who murdered Steven Cthulu that evening?\n"
  puts "\n"
   puts "*Pick a Response Number*"
   puts "
     [1] Nick Cthulu.
     [2] Anna Cthulu.
     [3] Jodie Cthulu.
     [4] It was me.
     "

     player_response= gets.chomp
     if player_response == "1"
       puts `clear`
       puts "That Nick Cthulu. He was very off when I interviewed him. Angry outbursts and easily irritable, unrelated to the situation
       at hand. "
       self.make_guilty(3)
       puts `clear`;puts "NICK CTHULU IS GUILTY! HE HAS BEEN ARRESTED!";sleep 5
       self.outro
     elsif player_response == "2"
        puts `clear`
       puts "Anna, she admitted to me how Steven had cheated on her and that he deserved to be murdered. What a foolish thing to have done.
       She made this easy."
        self.make_guilty(2)
        puts `clear`;puts "ANNA CTHULU IS GUILTY! SHE HAS BEEN ARRESTED!";sleep 5
        self.outro
     elsif player_response == "3"
        puts `clear`
       puts "Jodie had told me she was in the kitchen the night of the murder which didn't add up to what her mother had said. "
        self.make_guilty(4)
        puts `clear`;puts "JODIE CTHULU IS GUILTY! SHE HAS BEEN ARRESTED!";sleep 5
       self.outro
     elsif player_response == "4"
      puts `clear`
      puts "I did it! I murdered Steven Cthulu! He had caught me and his wife together in bed. I panicked so I had to fix the situation."
      puts "The guilt has been destroying me...."
      self.make_player_guilty
      puts `clear`;puts "YOU ARE GUILTY! YOU HAVE BEEN ARRESTED!";sleep 5
      self.outro
     else
       puts "INVALID COMMAND"
        puts `clear`
       self.finale
     end
end

end

class Suspect < ActiveRecord::Base
  has_many :interrogations

  def self.speak_to_suspect(suspect)
   if suspect == Suspect.all[1].name
     #
   elsif suspect == Suspect.all[2].name
     puts "HEY HEY HEY"
   elsif suspect == Suspect.all[3].name
     #
  else
    self.speak_to_suspect
  end

end

end

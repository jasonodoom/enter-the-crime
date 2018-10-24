class Player < ActiveRecord::Base
  has_many :interrogations


  def identify_player
    #this method should identify the player for use in suspect.rb {Player.all.name}: dialogue here
  end
  
end

class Suspect < ActiveRecord::Base
  has_many :interrogations
end

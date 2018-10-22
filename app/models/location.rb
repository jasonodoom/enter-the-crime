class Location < ActiveRecord::Base
 belongs_to :players
 belongs_to :characters
end

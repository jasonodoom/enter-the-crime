class Interrogation < ActiveRecord::Base
 belongs_to :players
 belongs_to :suspects
end

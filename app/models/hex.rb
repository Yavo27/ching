class Hex < ActiveRecord::Base
 belongs_to :Ask
 def name_format
     "This the number of your Hexagram is #{hex_id}. This is the name #{name} of your Hexagram."
 end
class Ask < ActiveRecord::Base

end
end

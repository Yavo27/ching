class Hex < ActiveRecord::Base
end
class Ask < ActiveRecord::Base
validates_presence_of :question
end

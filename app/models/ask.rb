class Ask < ActiveRecord::Base
validates_presence_of :question
serialize :line1, Array
serialize :line2, Array
serialize :line3, Array
serialize :line4, Array
serialize :line5, Array
serialize :line6, Array
end

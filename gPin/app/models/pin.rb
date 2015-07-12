class Pin < ActiveRecord::Base
	validates_presence_of :pinName
	validates_presence_of :url
	validates_presence_of :comment
	
end

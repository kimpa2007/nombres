class Nombre < ActiveRecord::Base
	has_and_belongs_to_many :nacionalidads	
	validates_presence_of :nombre
end
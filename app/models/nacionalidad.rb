class Nacionalidad < ActiveRecord::Base
	has_and_belongs_to_many :nombres
	validates_presence_of :nombre
end
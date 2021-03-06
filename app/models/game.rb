class Game < ActiveRecord::Base

	# -------------- Accessors/Mutators
	attr_accessible :gamename, :description, :unit
   
	# -------------- Associations
	has_many :users
	has_many :levels
	has_many :badges
					  
	# -------------- Validations  
	validates :gamename, :presence => true
	validates :gamename, :uniqueness => {:case_sensitive => false}
	validates :description, :presence => true
	validates :unit, :presence => true
	
	# -------------- Custom Validations
	
end

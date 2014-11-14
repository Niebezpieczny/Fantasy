class Team < ActiveRecord::Base
	
	
	belongs_to :user
	has_many :memberships
	has_many :players, through: :memberships
end

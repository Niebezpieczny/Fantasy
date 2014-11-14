class Player < ActiveRecord::Base
	has_many :teams, through: :memberships
	has_many :memberships
end

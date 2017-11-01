class Boat < ApplicationRecord
	has_many :jobs
	has_many :companies, through: :jobs

	validates :name, uniqueness: true
end

class Company < ApplicationRecord
	has_many :jobs
	has_many :boats, through: :jobs
	has_many :users
end

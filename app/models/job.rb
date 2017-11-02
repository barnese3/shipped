class Job < ApplicationRecord
	has_many :boat_jobs, :dependent => :destroy
	has_many :boats, :through => :boat_jobs, :dependent => :destroy
	belongs_to :company


	validates :cost, numericality: {greater_than_or_equal_to: 1000}
	validates :name, uniqueness: true
	validates :description, length: {minimum: 50}

	class Places
		def self.places
			@@PLACES
		end
		def self.get_location(num)
			@@PLACES[num.to_i]
		end
			@@PLACES = [ 
			"Australia", 
			"Spain", 
			"New York", 
			"Los Angeles",
			"Montreal",
			"Vancouver",
			"Ireland",
			"New Zealand",
			"South Africa",
			"France",
			"Germany",
			"Hong Kong",
			"United Kingdom",
			"China",
			"Venice" ]
	end
end
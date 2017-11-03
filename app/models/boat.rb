class Boat < ApplicationRecord
	has_many :boat_jobs, :dependent => :destroy
	has_many :jobs, :through => :boat_jobs, :dependent => :destroy
	belongs_to :company

	mount_uploader :image, ImageUploader

	validates :name, uniqueness: true

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
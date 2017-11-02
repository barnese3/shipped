class Boat < ApplicationRecord
	has_many :boat_jobs
	has_many :jobs, :through => :boat_jobs
	belongs_to :company

	validates :name, uniqueness: true

	LOCATIONS = [ 
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
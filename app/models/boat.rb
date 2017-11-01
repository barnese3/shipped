class Boat < ApplicationRecord
	has_many :jobs
	has_many :companies, through: :jobs

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
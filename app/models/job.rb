class Job < ApplicationRecord
	belongs_to :boat
	belongs_to :company

	validates :cost, numericality: {greater_than_or_equal_to: 1000}
	validates :name, uniqueness: true
	validates :description, length: {minimum: 50}
end

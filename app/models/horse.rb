class Horse < ApplicationRecord
	validates :ranking, presence: true, numericality: { only_integer: true }
	validates :name, presence: true, length: { minimum: 2 }
	validates :breed, presence: true, length: { minimum: 1 }
	validates :age, presence: true, numericality: { only_integer: true }
	validates :country, presence: true, length: { minimum: 2 }
	validates :score, presence: true, numericality: { only_integer: true }
end

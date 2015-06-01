class Artist < ActiveRecord::Base
	has_many :albums
	has_many :songs , through: :albums
	validates :name, presence: :true

	def liked!
		self[:likes] = self[:likes] + 1 
	end
	
end

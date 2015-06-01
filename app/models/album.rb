class Album < ActiveRecord::Base
	has_many :songs
	belongs_to :artist
	validates :name, presence: :true

	def liked!
		self[:likes] = self[:likes] + 1 
	end

end

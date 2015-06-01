class Song < ActiveRecord::Base
	belongs_to :album
	validates :name, presence: :true

	def liked!
		self[:likes] = self[:likes] + 1 
	end

end

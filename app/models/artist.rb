class Artist < ActiveRecord::Base
	has_and_belongs_to_many :albums
	has_many :songs , through: :albums
	validates :name, presence :true
end

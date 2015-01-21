class Recipe < ActiveRecord::Base
	belongs_to :user

	validates :title, presence: true
	validates :instructions, presence: true
end

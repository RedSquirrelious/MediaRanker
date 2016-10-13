class Medium < ActiveRecord::Base
	has_many :votes
	validates :title, presence: true
	validates :maker, presence: true
	validates :description, presence: true
	validates :kind, presence: true
end

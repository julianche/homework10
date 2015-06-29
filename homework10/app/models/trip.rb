class Trip < ActiveRecord::Base
	belongs_to :user
	has_many :entries
	validates :title, presence: true
					# length: {minimum: 3}
end

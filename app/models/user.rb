class User < ApplicationRecord
	has_many :products

	validates :email_address, uniqueness: true, presence: true
end

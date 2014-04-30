class Budget < ActiveRecord::Base
	belongs_to :accounts
	has_many :categories
end

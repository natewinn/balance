class User < ActiveRecord::Base
	belongs_to :accounts
	has_many :transactions
end

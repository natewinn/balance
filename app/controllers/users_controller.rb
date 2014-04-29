class UsersController < ApplicationController
	belongs_to :accounts
	has_many :transactions
end

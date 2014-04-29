class AccountsController < ApplicationController
	has_many :users
	has_many :bank_accounts
	has_many :budgets
	has_many :transactions, through: :users
end

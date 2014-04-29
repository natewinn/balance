class BudgetsController < ApplicationController
	belongs_to :accounts
	has_many :categories
end

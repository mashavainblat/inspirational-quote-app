class QuotesController < ApplicationController
	def index
		@quotes = Quote.all
	end

	def show
		@quotes = Quote.all
		render json: @quotes
	end
end
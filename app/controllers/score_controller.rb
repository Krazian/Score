class ScoreController < ApplicationController
	def index
		@scores = Score.all.order("score desc").limit(10)
	end
end

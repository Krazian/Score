class EntryController < ApplicationController
	def index
	end

	def new
		@name = params[:name]
		@score = params[:score]
		entry = Score.create(name:@name, score:@score)
		redirect_to root_path
	end

  private
  	def new_score_params
      params.require(:name).require(:score)
    end
end


class Api::V1::DrawsController < ApplicationController
    def index
    	@drawer = Draw.all
        render json: {status: 'SUCCESS', message: 'Loaded all draws', data: @drawer}, status: :ok
    end 

    def new
		@drawer = Draw.new(draw_params)
        render json: {status: 'SUCCESS', message: 'Loaded all draws', data: "draws"}, status: :ok
	end

	def create
		@draw = Draw.new(draw_params)

		if @draw.save
			redirect_to @draw
		else
			render 'new'
		end
	end

    def show
        draws = Draw.all
        render json: {status: 'SUCCESS', message: 'Loaded draw', data: draws}, status: :ok
    end



    private
    def draw_params
        params.require(:draw).permit(:amount)
    end
end

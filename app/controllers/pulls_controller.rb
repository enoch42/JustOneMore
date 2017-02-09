class PullsController < ApplicationController
  def create
    @keg = Keg.find(params[:keg_id])
    @pull = @keg.pulls.create(pull_params)
    redirect_to keg_path(@keg)
  end

  def destroy
    @keg = Keg.find(params[:keg_id])
    @pull = @keg.pulls.find(params[:id])
    @pull.destroy
    redirect_to keg_path(@keg)
  end
  private
    def pull_params
      params.require(:pull).permit(:amount)
    end
end

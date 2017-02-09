class KegsController < ApplicationController

    def index
        @kegs = Keg.all
    end

    def new
        @keg = Keg.new
    end

    def edit
      @keg = Keg.find(params[:id])
    end
    def update 
        @keg = Keg.find(params[:id])
    
      if @keg.update(keg_params)
        redirect_to @keg
      else
        render 'edit'
      end
    end

    def create
      @keg = Keg.new(keg_params)

      if @keg.save
        redirect_to @keg
      else
        render 'new'
      end
    end

    def show
      @keg = Keg.find(params[:id])
    end

    def destroy
      @keg = Keg.find(params[:id])

      @keg.destroy

      redirect_to kegs_path  
    end
private
  def keg_params
    params.require(:keg).permit(:brand, :name, :amount)
  end

end

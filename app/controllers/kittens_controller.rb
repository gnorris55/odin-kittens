class KittensController < ApplicationController
    def index
        @kittens = Kitten.all
    end

    def show
        @kitten = Kitten.find(params[:id])
    end 

    def new
        @kitten = Kitten.new
    end

    def create
        @kitten = Kitten.new(kitten_params)

        if @kitten.save
            redirect_to kitten_path(@kitten.id)
        else
            redirect_to root_path
        end 
    end 

    def search

    end

    def destroy
        @kitten = Kitten.find(params[:id])
        @kitten.destroy
        redirect_to root_path

        flash[:destroy] = "you have destroyed a kitten" 
    end 

    private
    def kitten_params
        params.require(:kitten).permit(:name, :age, :cuteness_scale, :softness_scale)
    end


end

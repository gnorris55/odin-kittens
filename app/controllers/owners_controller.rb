class OwnersController < ApplicationController
    def index
        @owners = Owner.all
    end

    def show
        @owner = Owner.find(params[:id])
    end

    def new
        @owner = Owner.new
    end

    def create
        @owner = Owner.new(owner_params)

        if @owner.save
            redirect_to owner_path(@owner.id)
        else
            redirect_to new_owner_path
        end
    end

    private 
    def owner_params
        params.require(:owner).permit(:name)
    end
    
end

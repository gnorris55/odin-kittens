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

    def adopt
        @owner = Owner.find(params[:id])
        @kitten_options = Kitten.all.map{ |k| [ k.name, k.id ] }
    end

    def confirm_adopt
        @owner = Owner.find(params[:id])
        if @owner.kittens.all.find_by(id: params[:kitten_id]).present?
            redirect_to adopt_path(@owner.id)
        else 
            @owner.kittens << Kitten.find(params[:kitten_id])
            redirect_to owner_path(params[:id])
        end
        

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

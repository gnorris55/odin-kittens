class KittensController < ApplicationController
    def index
        @kittens = Kitten.all

        respond_to do |format|
            format.json { render :json => @kittens }
            format.xml { render :yml => @kittens }
            format.html 
        end
    end

    def show
        @kitten = Kitten.find(params[:id])

        respond_to do |format|
            format.json { render :json => @kitten }
            format.xml { render :xml => @kitten }
            format.html 
        end
    end 

    def new
        @potential_owners = Owner.all
        @kitten = Kitten.new
    end

    def create

        @kitten = Kitten.new(kitten_params)
        if @kitten.save
            redirect_to kitten_path(@kitten.id)
        else
            redirect_to new_kitten_path
            flash[:errors] = @kitten.errors.messages
        end 
    end 

    def edit 
        @kitten = Kitten.new(kitten_params)
    end

    def update
        @kitten = Kitten.new(kitten_params)
        @kitten.update(kitten_params)

        redirect_to root_path
    end 

    def destroy
        @kitten = Kitten.find(params[:id])
        @kitten.destroy
        redirect_to root_path

        flash[:destroy] = "you have destroyed a kitten" 
    end 

    private
    def kitten_params
        params.require(:kitten).permit(:name, :age, :cuteness_scale, :softness_scale, :owner_id)
    end


end

class DojosController < ApplicationController
    def index
    @dojos = Dojo.all
    @count = Dojo.count
    end
    def new
    end
    def addnew
        Dojo.create(dojo_params)
        redirect_to '/'
    end
    def show
    @dojo = Dojo.find(params[:id])
    end
    def edit
    @dojo = Dojo.find(params[:id])
    end
    def editdojo
        a = Dojo.find(params[:id])
        a.branch = params[:branch]
        a.street = params[:street]
        a.city = params[:city]
        a.state = params[:state]
        a.save
        redirect_to '/'
    end
    def delete
        Dojo.find(params[:id]).destroy
        redirect_to '/'
    end 
    private
        def dojo_params
            params.require(:dojo).permit(:branch,:street,:city,:state)
        end
end

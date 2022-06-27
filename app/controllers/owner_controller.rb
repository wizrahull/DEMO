class OwnerController < ApplicationController
    def index
        #render json: Pool.all 
    end

    def show 
      render json: Pool.find(params[:id])
    end

    def create
        x= Pool.create(name: params[:name], member: params[:member])
        render json: x
    end

    def update 
       p= Pool.find(params[:id])
        render json: p.update(name: params[:name], member: params[:member])
    end
    def destroy
        Pool.destroy(params[:id])
    end
end

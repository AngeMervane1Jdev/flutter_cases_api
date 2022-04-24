class Api::V1::CasesController < ApplicationController

    def index
        @cases=Case.all
        render json: @cases 
        
    end

    def show
        @case=Case.find(params[:id])
        render json:@case
    end

    def create
        @case=Case.new(cases_params)
        if @case.save!
            render json:@case
        else
            render error:{error: 'Ajout impossible'},status: 400

        end
        
    end

    def update
        @case=Case.find(params[:id])
        if @case
            @case.update(cases_params)
            render error:{message: 'Mis à jour'},status: 200
        else
            render error:{error: 'Mis à jour impossible'},status: 400   
        end
        
    end
    

    def destroy
        @case=Case.find(params[:id])
        if @case
            @case.destroy
            render error:{message: 'Supprimé'},status: 200
        else
            render error:{error: 'Suppression impossible'},status: 400   
        end
        
    end
    

    private 
    def cases_params
        params.require(:case).permit(:name,:idx,:gender,:address ,:city,:country,:status,:updated)
    end
    
    
end

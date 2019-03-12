class ProvidersController < ApplicationController
    before_action :set_provider, only: [:show, :edit, :update, :destroy]
    
    def index
        @providers = Provider.all
    end
    
    def new
       @provider = Provider.new 
    end
    
    def create
        @provider = Provider.new(provider_params)
        
        if @provider.save
            redirect_to @provider
        else
            render 'new'
        end            
    end
    
    def show
        
    end
    
    def update
        if @provider.update(provider_params)
            redirect_to @provider
        else
            render 'update'
        end
    end
    
    def destroy
        @provider.destroy
        redirect_to root_path
    end
    
    private
    
        def set_provider
            @provider = Provider.find(params[:id]) 
        end
    
        def provider_params
          params.require(:provider).permit(:first_name, :last_name, :provider_specialty_id, :Date_Of_Hire, :Commission_Rate)
        end
end

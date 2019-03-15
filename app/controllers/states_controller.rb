class StatesController < ApplicationController
    before_action :set_state, only: [:show, :edit, :update, :destroy]
    
    def index
        @states = State.all.order("state ASC")      
    end
    
    def new
        @state = State.new
    end
    
    def create
        @state = State.new(state_params)
        
        if @state.save
            redirect_to @state
        else
            render new
        end
    end
    
    def update
        
    end
    
    def edit
        
    end
    
    def destroy
        
    end
    
    private
    
        def set_state
          @state = State.find(params[:id])
        end
        
        def state_params
            params.require(:state).permit(:state)
        end
end

class PowersController < ApplicationController
     ##get all powers
     def index 
          powers = Power.all 
          render json: powers
     end
     ##get powers by id
     def show
          powers = Power.find_by(id: params[:id])
          if powers
          render json: powers
          else 
               render json: {error: "Power not found"}
          end
     end

     ##update description of power
     def update
          power = Power.find_by(id: params[:id])
          if power
            if power.update(description: params[:description])
              render json: power
            else
              render json: { errors: power.errors.full_messages }, status: :unprocessable_entity
            end
          else
            render json: { error: "Power not found" }, status: :not_found
          end
        end        
end

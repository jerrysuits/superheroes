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
end

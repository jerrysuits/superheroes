class PowersController < ApplicationController
     ##get all powers
     def index 
          powers = Power.all 
          render json: powers
     end
end

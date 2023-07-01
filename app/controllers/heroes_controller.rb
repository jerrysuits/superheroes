class HeroesController < ApplicationController
     ##get all heroes
     def index
       heroes = Hero.all
       render json: heroes
     end
     ##get hero and respective powers by id
     def show
          heroes = Hero.includes(:powers).find_by(id: params[:id])
          if heroes
          render json: heroes, include: :powers
          else
               render json: {error: "Hero not found"}
          end
     end
end
   
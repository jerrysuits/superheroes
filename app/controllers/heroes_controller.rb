class HeroesController < ApplicationController
     ##get all heroes
     def index
       heroes = Hero.all
       render json: heroes
     end
end
   
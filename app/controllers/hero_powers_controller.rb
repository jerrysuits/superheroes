class HeroPowersController < ApplicationController

     ###get hero powers
     def index 
          hero_power = HeroPower.all 
          render json: hero_power
     end
     ###making a new hero power
     def create
       hero = Hero.find_by(id: params[:hero_id])
       power = Power.find_by(id: params[:power_id])
   
       if hero && power
         hero_power = HeroPower.new(hero: hero, power: power, strength: params[:strength])
   
         if hero_power.save
           render json: hero, include: :powers
         else
           render json: { errors: hero_power.errors.full_messages }
         end
       else
         render json: { error: "Hero or Power not found" }
       end
     end
   end
   

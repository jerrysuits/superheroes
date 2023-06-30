# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
   hero1 = Hero.create(
     name: "Gerald Obede",
     super_name: "G man"
   )
   
   hero2 = Hero.create(
     name: "Peter Parker",
     super_name: "Spiderman"
   )
   
   hero3 = Hero.create(
     name: "Clark Kent",
     super_name: "Superman"
   )
   
   hero4 = Hero.create(
     name: "Tony Stark",
     super_name: "Iron Man"
   )
   
   power1 = Power.create(
     name: "Flying",
     description: "Able to fly really high really fast with ease"
   )
   
   power2 = Power.create(
     name: "Web shooter",
     description: "Able to shoot webs that trap people and allow him to swing across the city"
   )
   
   power3 = Power.create(
     name: "Superspeed",
     description: "Can run really fast, faster than the speed of light"
   )
   
   power4 = Power.create(
     name: "Super strength",
     description: "Has abnormal human strength and can tear down buildings"
   )
   
   HeroPower.create(
     hero: hero1,
     power: power1,
     strength: "Average"
   )
   
   HeroPower.create(
     hero: hero2,
     power: power2,
     strength: "Weak"
   )
   
   HeroPower.create(
     hero: hero3,
     power: power3,
     strength: "Strong"
   )
   
   HeroPower.create(
     hero: hero4,
     power: power4,
     strength: "Strong"
   )
   
   HeroPower.create(
     hero: hero4,
     power: power1,
     strength: "Strong"
   )
   
   HeroPower.create(
     hero: hero4,
     power: power3,
     strength: "Strong"
   )

   HeroPower.create(
     hero: hero1,
     power: power3,
     strength: "Strong"
   )
   
   HeroPower.create(
     hero: hero2,
     power: power1,
     strength: "Strong"
   )
   
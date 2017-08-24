#Taquiza Menu
#South Beach 1506 Collins Ave
outside_menu =
 {sections:
 [
   {name: "Tacos", items:[
         {name: "Al Pastor",
           description: "pork, achiote, pineapple",
           price: 3.50},
          {name:"Chorizo",
           description: "pork, paprika, cumin, garlic",
           price: 3.50},
           {name: "Barbacoa",
           description:"beef, cumin, pasilla negra",
           price: 3.50},
           {name: "Pollo",
           description:"chicken, scallion, cilantro",
           price: 3.50},
           {name: "Huitlacoche",
           description:"corn 'truffle', corn, scallion",
           price: 3.50},
           {name: "Carnitas",
           description: "pork, orange, cinnamon",
           price:3.50},
           {name: "Adada",
           description:"steak,citrus,chile de arbol",
           price:3.50},
           {name: "Lengua",
           description:"beef tongue, cerveza victoria",
           price:3.50},
           {name: "Camaron",
           description:"shrimp, red 'mole', slaw",
           price: 3.50},
           {name: "Rajas",
           description:"poblano, onion, crema, cotija",
           price:3.50},
           {name: "Chapulines",
           description:"grasshoppers, avocado, tajin",
           price:3.50}]
       },
     {name: "Sides / Antojitos", types:[
         {name:"Totopos",
           description:"hand torn blue masa chips",
           price:5},
           {name: "Quinoa",
           description:"jicama, corn, scallion, chile, nopal dressing",
           price:6.50},
         {name:"Elote",
           description:"charred corn, cilantro-jalapeno crema, cotija",
           price:5.00}]
       },
       {name: "Beer/Cerveza", types:[
           {name:"Corona Extra",
             description:"",
             price:7.00},
           {name:"Pacifico",
             description:"",
             price:6.00},
           {name:"Corona Light",
             description:"",
             price:6.00},
           {name:"Tecate",
             description:"",
             price:5.00},
           {name:"Negra Modelo",
             description:"",
             price:6.00},
           {name:"Victoria",
             description:"",
             price:6.00},
           {name:"Rotating Craft Selection",
             description:"",
             price:8.00}]
         },
       {name:"Breakfast", types:[
         {name:"Huevos a la Mexicana",
           description: "scrambled eggs, pico,frijoles, crema, tortillas",
           price: 5},
         {name: "Quesadillas de Epazote",
           description:"queso chihuahua, cotija,epazote",
           price: 5},
         {name:"Tostada De Aquacate",
           description:"avocado, eggs, frijoles, cabbage, cotija",
           price: 6},
         {name:"Chilaquiles",
           description:"crispy masa, pollo, salsa roja, eggs, crema",
           price: 6},
         {name:"Tortilla De Aguacate",
           description:"avocado, queso chihuahua, cotija, frijoles",
           price: 6}]
         },
       {name: "Coffee & Tea", types:[
         {name:"espresso",
           description:"shot 3 | cortado 4 | latte 5",
           price: 3},
           {name:"La Endulzada",
             description:"espresso, condensed milk, ice, shaken",
             price: 5}]
         }
 ]
}

#
# introduction = ["Options: show menu"]
# def display_intro(text)
#   puts text.join("\n")
# end
#
# display_intro(introduction)
#
# while user_input = gets.chomp
#   case user_input
#   when "show menu"
#     puts menu
#     break
#   end
# end


def show_menu(menu)
  menu [:sections].each do |section|
    puts section [:name]
    p  section [:items]
    p section.keys
    section [:items].each do |type|
      name = type[:name]
      description = type[:description]
      price = type[:price]
      p name, description, price
      puts name
      puts "\tdescription: #{description}"
      puts "\tprice $#{price}"
      puts ""
    end
  end
end

puts "Welcome to Taquiza"
response = nil
until response == "get the check"
puts "Whaddaya want?"
response = gets.chomp
if response == "show menu"
  show_menu(outside_menu)
elsif response == "place order"
  purchase = place_order(outside_menu)
end
end

# done ordering, time to print the receipt
p purchase

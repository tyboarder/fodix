#!/usr/bin/env ruby


# Intro
puts "Welcome to Fodix! Here, your knowledge and cunning will be tested and, if you win, you will have The Power of All Light! Good luck on your journey, traveler, and enjoy the world of Faudland!"
puts "What is your name?"
name = gets.strip.capitalize
if name == "white-buffalo"
  puts "Welcome, Creator."
else
  puts "Welcome #{name}, to the amazing land of Faudland!"
end


# Menu
puts "Where would you like to go: Play, About"
navigate = gets.strip.downcase

# About
if navigate == "about"
  puts "Tyler Curtis is just a 16 year old with too much time on his hands. Not really, I just like to procrastinate."
elsif navigate == "sequence"
  puts "Winning sequence: left, yes, kitchen, pan, 3, candle, fight"
end


# Play
if navigate == "play" or navigate == "sequence"
  puts "Good luck on your adventure, #{name}!"
  puts "You come upon a fork in the road. Would you like to go left or right?"
  fork1 = gets.strip.downcase
else
  abort("Invalid command. Please try again.")
end

# Fork
begin
  if fork1 == "left"
    puts "You have chosen to go left."
  elsif fork1 == "right"
    puts "You have chosen to go right."
  else
    abort("Invalid command. Please try again.")
  end

# House
  if fork1 == "left"
    puts "You walk for a while and see a house. Would you like to enter the house?"
    house_enter = gets.strip.downcase
  elsif fork1 == "right"
    abort("You walk for a while. Suddenly, a troll jumps out and kills you. Thanks for playing!")
  else
    abort("Invalid command. Please try again.")
  end

# Stairs/Kitchen
  if house_enter == "yes"
    puts "You enter the house. You are in a living room with a staircase and a door that leads to the kitchen. Where would you like to go?"
    stairs_kitchen = gets.strip.downcase
  elsif house_enter == "no"
    abort("You do not have the heart to be an adventurer. Goodbye.")
  else
    abort("Invalid command. Please try again.")
  end



# Stairs
  if stairs_kitchen == "staircase" or stairs_kitchen == "stairs" or stairs_kitchen == "upstairs"
    puts "You walk upstairs and see four bedrooms. Which bedroom would you like to go into, 1 ,2 3, or 4?"
    bedroom = gets.strip.downcase
  elsif stairs_kitchen == "kitchen"
    puts "You walk into the kitchen and see a knife, a pan, and a candle. Which would you like to take?"
    object = gets.strip.downcase
  else
    abort("Invalid command. Please try again.")
  end
  if object == "knife"
    abort("As you reach for the knife, you trip and stab yourself. You then bleed out and die a slow, painful death.")
  elsif object == "candle" or object == "pan"
    puts "You grab the object and then go upstairs. You see four bedrooms. Which bedroom would you like to go into, 1, 2, 3, or 4?"
    bedroom = gets.strip.downcase
  end
end

# Bedroom
if bedroom == "3"
    puts "You walk into the room and see a bat, a hat, and a candle. Which would you like to take?"
    object1 = gets.strip.downcase
elsif bedroom == "1" or bedroom == "2" or bedroom == "4"
    abort("You walk into the room, fall through the floor, and die.")
else
    abort("Invalid command. Please try again.")
end
puts "You hear someone (or something) walking up the stairs. You have two options: jump out the window or face the attacker. Which would you like to do?"
fight_or_flight = gets.strip.downcase
if fight_or_flight == "fight" or fight_or_flight == "face attacker"
  if object == "pan" and object1 == "bat"
  puts "You turn to face the attacker. What weapon would you like to choose: pan or bat?"
  object_choose = gets.strip.downcase
  end
    if object == "pan" and object1 != "bat" or object_choose == "pan"
      puts "The attacker comes up the stairs and is a figure clad in all black. You hit him with the pan, knocking him unconscious."
    elsif object1 == "bat" and object != "pan" or object_choose == "bat"
      abort("You struggle with the attacker, causing a commotion. Then, you hit the attacker with the bat, killing him instantly. Suddenly, someone else comes up the stairs and attacks you. You struggle, and end up getting stabbed to death.")
    else
      puts "You and the attacker struggle for a moment before he stabs and kills you."
    end
elsif fight_or_flight == "jump" or fight_or_flight == "jump out the window" or fight_or_flight == "jump out window" or fight_or_flight == "flee"
  abort("You jump out the window. When you hit the ground, a piece of glass cuts your femoral artery and you bleed out.")
else
  abort("Invalid command. Please try again.")
end

#End Bedroom
puts "Would you like to search him?"
search = gets.strip.downcase
if search == "yes"
  puts "You find a length of rope and tie him up with it."
elsif search == "no"
  abort("Suddenly someone else comes up the stairs and stabs you multiple times upon seeing you. You quickly bleed out.")
else
  abort("Invalid command. Please try again.")
end

#Title: Gluten Free
 
#Prerequisites:
#- Ruby
#    - Exceptions
#    - Hashes & Arrays
#    - Objects & Classes
 
#Objectives:
#- Work with exceptions, classes, class variables, conditions
 
#"======================================================================"
 
# Create a Person class. A person will have a stomach and allergies
# Create a method that allows the person to eat and add arrays of food to their stomachs
# If a food array contains a known allergy reject the food.



pizza = ["cheese", "gluten", "tomatoes"]
pan_seared_scallops = ["scallops", "lemons", "pasta", "olive oil"]
water = ["h", "h", "o"]

class Person
	attr_accessor :stomach, :allergies
	def initialize(stomach, allergies)
		@stomach = stomach
		@allergies = allergies
	end

	def digest()		
		@digest_food.each do |food_item|
			if food_item == @allergies
				puts "uh-oh, you are allergic to #{food_item}"
			else
				puts "don't worry, you just ate #{food_item}"
			end
		end
	end

	def eat(food)
		if pizza
			@digest_food = pizza
		elsif pan_seared_scallops
			@digest_food = pan_seared_scallops
		elsif water
			@digest_food = water
		end
		digest
	end
end

food = pizza + pan_seared_scallops + water 



# chris = Person.new([], "gluten") 
# chris.eat pizza
# beth = Person.new([], "scallops")
# beth.eat pizza
 
# Create a Person named Chris. Chris is allergic to gluten.
# Create a Person named Beth. Beth is allergic to scallops.
# Feed them the following foods
 

 
# When a person attempts to eat a food they are allergic to, raise a custom exception
# For example:  AllergyError
 
 
# Bonus: When a person attempts to eat a food they are allergic to,
#        ... remove ALL the food from the person's stomach before raising the exception
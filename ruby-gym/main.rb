# Ruby Data Types
require "debug"

# # 1. String

# red_sweater_student = "Bella Rose"

# # pp red_sweater_student

# # def is_not_string?(value)
# #     return !value.is_a?(String)
# # end

# # def print_string(value)
# #     if is_not_string?(value)
# #         pp "Value is not a string"
# #     else
# #         pp value
# #     end
# # end

# # print_string(5)
# # print_string(red_sweater_student)

# # pp red_sweater_student.class
# # pp red_sweater_student.downcase


# # pp red_sweater_student.capitalize!

# grey_sweater_student = "iman"

# # arr = grey_sweater_student.split(" ")

# # arr.each do |name|
# #     pp name.capitalize!
# # end

# # pp arr.join(" ")

# # pp grey_sweater_student.gsub("n", "y")
# #                        .gsub("a", "r")
# #                        .gsub("m", "a")
# #                        .gsub("i", "m")

# number_of_popcicles_in_a_box = 10
# number_of_popcicles_brian_has_consumed_in_the_last_week = 7

# # + - * / % **

# boxes_of_popcicles = 1 + 1

# pp "Brian bought #{boxes_of_popcicles} boxes of popcicles"

# total_popcicles = number_of_popcicles_in_a_box * boxes_of_popcicles

# pp "He now has #{total_popcicles} popcicles"

# popcicles_left = total_popcicles - number_of_popcicles_brian_has_consumed_in_the_last_week

# pp "He has consumed #{number_of_popcicles_brian_has_consumed_in_the_last_week}. He has #{popcicles_left} popcicles left"

# pp "Out of the first box he has opened he has #{number_of_popcicles_in_a_box % number_of_popcicles_brian_has_consumed_in_the_last_week } left"

# popcicles_consumed_in_a_year = number_of_popcicles_brian_has_consumed_in_the_last_week * 52
# price_of_popcicle = 1.5

# total_price =  (price_of_popcicle * popcicles_consumed_in_a_year)

# roi = total_price ** 0.08

# pp "In a year he consumes #{popcicles_consumed_in_a_year} popcicles. If he put that in a index fund he would have gains of #{roi} in a year."



# # 5. Array
# students = ["A", "Banana", "Orange"]

my_favorite_fruits = ["Banana", "Orange", "Apple"]

#Banana is at index 0
#Orange is at index 1
#Apple is at index 2

my_favorite_fruits.push("Starfruit")

#Starfruit is at index 3

# pp my_favorite_fruits

def my_own_push(array, value)
    array[array.count] = value
    return array
end

my_favorite_fruits = my_own_push(my_favorite_fruits, "Pineapple")

# pp my_favorite_fruits

my_favorite_fruits.pop

# pp my_favorite_fruits

my_favorite_fruits.delete_at(0)

# pp my_favorite_fruits

# pp my_favorite_fruits.sample


# computer_choice = Math.floor(rand(0..2))
# if ( computer_choice == 0 )
#     computer_choice = "rock"
# elsif ( computer_choice == 1 )
#     computer_choice = "paper"
# else
#     computer_choice = "scissors"
# end

# compiter_choice = ["rock", "paper", "scissors"].sample

# pp my_favorite_fruits.minmax

# pp my_favorite_fruits


# pp "My favorite fruits in order are:"
# my_favorite_fruits.each_with_index do |fruit, i|
#     pp "#{i + 1}: #{fruit}"
# end


# even_numbers = Array.new
# odd_numbers = []

# while even_numbers.length < 100
#   new_number = rand(100)

#   if (new_number.even?)
#     even_numbers.push(new_number)
#   else
#     odd_numbers.push(new_number)
#   end

# end

# pp even_numbers.count
# pp odd_numbers.count

def is_even?(number)
    number % 2 == 0
end

pp is_even?(2)

# # 6. Hash
# person = {
#     name: "John Doe",

students = [ "Iris", "Heather", "Ashley"]

pp students[1]

student = {
    name: "Iris",
    dob: "01/01/1990",
    favorite_fruit: "Starfruit"
}

students = {
    "Iris" => {
        dob: "01/01/1990",
        favorite_fruit: "Starfruit"
    },
    "Heather" => {
        dob: "01/01/1990",
        favorite_fruit: "Orange"
    }
}

students.map do |name, student|
    pp "#{name} was born on #{student[:dob]}"
end

pp student[:favorite_fruit]


=begin
    if year % 4 == 0
  pp "Case 1 if"
  if year % 100 == 0 
    pp "Case 2 if"
    if year % 400 == 0
      pp "Case 3 if"
      pp "#{year} is a leap year!"
    else 
      pp "Case 3 else"
      pp "#{year} is not a leap year."
    end
  else
    pp "Case 2 else"
    pp "#{year} is a leap year!"
  end
else 
  pp "Case 1 else"
  pp "#{year} is not a leap year."
end
=end

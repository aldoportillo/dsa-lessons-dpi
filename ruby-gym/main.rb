# Ruby Data Types
require "debug"

# 1. String

red_sweater_student = "Bella Rose"

# pp red_sweater_student

# def is_not_string?(value)
#     return !value.is_a?(String)
# end

# def print_string(value)
#     if is_not_string?(value)
#         pp "Value is not a string"
#     else
#         pp value
#     end
# end

# print_string(5)
# print_string(red_sweater_student)

# pp red_sweater_student.class
# pp red_sweater_student.downcase


# pp red_sweater_student.capitalize!

grey_sweater_student = "iman"

# arr = grey_sweater_student.split(" ")

# arr.each do |name|
#     pp name.capitalize!
# end

# pp arr.join(" ")

# pp grey_sweater_student.gsub("n", "y")
#                        .gsub("a", "r")
#                        .gsub("m", "a")
#                        .gsub("i", "m")

number_of_popcicles_in_a_box = 10
number_of_popcicles_brian_has_consumed_in_the_last_week = 7

# + - * / % **

boxes_of_popcicles = 1 + 1

pp "Brian bought #{boxes_of_popcicles} boxes of popcicles"

total_popcicles = number_of_popcicles_in_a_box * boxes_of_popcicles

pp "He now has #{total_popcicles} popcicles"

popcicles_left = total_popcicles - number_of_popcicles_brian_has_consumed_in_the_last_week

pp "He has consumed #{number_of_popcicles_brian_has_consumed_in_the_last_week}. He has #{popcicles_left} popcicles left"

pp "Out of the first box he has opened he has #{number_of_popcicles_in_a_box % number_of_popcicles_brian_has_consumed_in_the_last_week } left"

popcicles_consumed_in_a_year = number_of_popcicles_brian_has_consumed_in_the_last_week * 52
price_of_popcicle = 1.5

total_price =  (price_of_popcicle * popcicles_consumed_in_a_year)

roi = total_price ** 0.08

pp "In a year he consumes #{popcicles_consumed_in_a_year} popcicles. If he put that in a index fund he would have gains of #{roi} in a year."






# # 2. Integer
# age = 25

# # 3. Float
# height = 5.1

# # 4. Boolean
# is_student = true

# # 5. Array
# students = ["A", "Banana", "Orange"]

# # 6. Hash
# person = {
#     name: "John Doe",
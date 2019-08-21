# frozen_string_literal: true

require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts 'Exercise 6'
puts '----------'

# Your code goes here ...
puts Employee.count
@store1.employees.create(first_name: "Brian", last_name: "Chang", hourly_rate: 60)
@store1.employees.create(first_name: "Chris", last_name: "Brown", hourly_rate: 40)
@store1.employees.create(first_name: "Starbucks", last_name: "Coffee", hourly_rate: 35)
@store1.employees.create(first_name: "Hola", last_name: "Cup", hourly_rate: 55)
@store1.employees.create(first_name: "One", last_name: "Two-two", hourly_rate: 44)

@store2.employees.create(first_name: "Brian", last_name: "Chang", hourly_rate: 60)
@store2.employees.create(first_name: "Chris", last_name: "Brown", hourly_rate: 40)
@store2.employees.create(first_name: "Starbucks", last_name: "Coffee", hourly_rate: 35)
@store2.employees.create(first_name: "Hola", last_name: "Cup", hourly_rate: 55)
@store2.employees.create(first_name: "One", last_name: "Two-two", hourly_rate: 44)

puts Employee.count
puts Store.count

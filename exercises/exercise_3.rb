# frozen_string_literal: true

require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts 'Exercise 3'
puts '----------'

# Your code goes here ...

Store.find_by(name: 'Gastown').destroy
puts Store.count

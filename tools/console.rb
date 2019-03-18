require_relative '../config/environment.rb'
require 'date'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


a = Cult.new("Scientology", "LA", 1969, "We are bad")
b = Cult.new("vegans", "Berlin", 1700, "fish are friends")

x = Follower.new("mera", 27, "hello")
y = Follower.new("rayna", 24, "goodbye")


binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits

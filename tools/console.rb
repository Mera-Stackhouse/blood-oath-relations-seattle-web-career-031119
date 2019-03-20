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

puts "----------------- Cult instances ---------------"
p Cult.all

x = Follower.new("mera", 27, "hello")
y = Follower.new("rayna", 24, "goodbye")

puts "----------------- Follower instances ---------------"
p Follower.all

BloodOath.new(x, a, "2005-06-02")
BloodOath.new(y, a, "2010-05-08")

puts "----------------- BloodOath instances ---------------"
p BloodOath.all

a.recruit_follower(x)
y.join_cult(x)




binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits

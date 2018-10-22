require_relative '../config/environment'

def start_game
end

def intro
puts "It's a dark and stormy night. We find ourselves in an old Victorian home,
somewhere in Brooklyn, New York. Unlike most evenings, this one was different.
Why? Because on this particular eveniing, a murder had been commited.

You are a detective, tasked with investigating this incident and finding the
killer in order to serve justice.

 Do you accept this investigation and all associated risks?[y/n]"


user_choice = gets.chomp

if user_choice.downcase == "no" || user_choice.downcase == "n"
  "The turn away..."
else
start_game 
end

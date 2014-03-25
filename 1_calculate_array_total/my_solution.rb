# U1.W3: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself].

# 1. Pseudocode

# What is the input?
# array 1 and array 2
# first sentence and second sentence


# What is the output? (i.e. What should the code return?)
# number that is total of the array
# complete string of the sentence


# What are the steps needed to solve the problem?

# define method called total that takes array as input
# set sum equal to zero
# iterate over each element of the array and add each element to sum
# return sum

# define method sentence_maker that takes array as input
# create sentence
# should capitalize first word
# add each consecutive word to sentence string except last word, separated by spaces
# end with last word + period


# 2. Initial Solution

def total(array)
	sum = 0
	array.each do |x|
		sum = sum + x
	end
	return sum
end

def sentence_maker(array)
	sentence = ""
	array[0].capitalize!
	i = 0
	while i < array.length - 1
		sentence = sentence + array[i].to_s + " "
		i = i + 1
	end
	sentence = sentence + array[array.length - 1].to_s + "."
	return sentence
end

# 3. Refactored Solution

def total(array)
	sum = 0
	array.each { |x|
		sum += x
	}
	return sum
end

def sentence_maker(array)
	sentence = ""
	array[0].capitalize!
	i = 0
	while i < array.length - 1
		sentence = sentence + array[i].to_s + " "
		i += 1
	end
	sentence = sentence + array[array.length - 1].to_s + "."
	return sentence
end

# 4. Reflection 

# What parts of your strategy worked? What problems did you face?
# The main problem I faced was that I had forgotten a lot of ruby
# syntax by the time I did this exercise.  The concepts are similar to what
# we were covering in javascript thankfully, so I had a rough idea of what
# I need to do.  But I had to go back and reference my notes heavily in order
# to complete the exercise.

# What questions did you have while coding? What resources did you find to help you answer them?
# I looked at this briefly http://www.ruby-doc.org/core-2.1.1/Array.html
# I mainly had specific syntax questions that I just referenced my notes from
# pre phase 0 for.

# What concepts are you having trouble with, or did you just figure something out? If so, what?
# At first I was going to use .each with the sentence_maker and it took me a bit
# to figure out that at least the way I was approaching the problem, that wasn't
# a good tactic to take.  Afteer getting over that bit, I didn't have any major questions

# Did you learn any new skills or tricks?
# I think this was mainly review of ruby, but I'm not sure I've written a method before that
# takes an array as input.

# How confident are you with each of the learning objectives?
# I'm pretty confident with the learning objectives for this exercise, but I'll need more practice!

# Which parts of the challenge did you enjoy?
# I liked solving each of the errors one by one.

# Which parts of the challenge did you find tedious?
# none.  This was relatively short.
# U1.W3: Calculate a letter grade!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself].

# 1. Pseudocode

# What is the input?
# an array of test scores

# What is the output? (i.e. What should the code return?)
# a letter grade as a string

# What are the steps needed to solve the problem?

# define get_grade as a method that takes array of test scores as input
# get sum by using reduce to get sum of array
# get average by dividing sum by the array's length
# if 
#	average >= 90
#	return string "A"
# else if average >= 80
#   return string "B"
# else if average >= 70
#   return string "C"
# else if average >= 60
#   return string "D"
# else if average >= 50
#   return string "E"
# else
# return "F"

# 2. Initial Solution
# def get_grade(input)
# 	sum = input.reduce {|sum, n| sum + n}
# 	average = sum / input.length

# 	if average >= 90
# 		return "A"
# 	elsif average >=80
# 		return "B"
# 	elsif average >= 70
# 		return "C"
# 	elsif average >= 60
# 		return "D"
# 	elsif average >= 50
# 		return "E"
# 	else				
# 		return "F"
# 	end
# end

# 3. Refactored Solution

def get_grade(input)
	average = input.reduce(:+) / input.length

	if average >= 90
		return "A"
	elsif average >=80
		return "B"
	elsif average >= 70
		return "C"
	elsif average >= 60
		return "D"
	elsif average >= 50
		return "E"
	else				
		return "F"
	end
end

# 4. Reflection 

# What parts of your strategy worked? What problems did you face?
# I learned about .reduce after reviewing other's challenge 1 from week 3 so I kept that in
# mind while I worked on this.  I had to look up the syntax, but overall I didn't face major
# problems

# What questions did you have while coding? What resources did you find to help you answer them?
# I looked up this link: http://ruby-doc.org/core-2.1.0/Enumerable.html#method-i-reduce
# to answer the questions I had about .reduce.

# What concepts are you having trouble with, or did you just figure something out? If so, what?
# I figured out how to use .reduce.  I think I understand how it works.  You can combine all the
# elements by something like adding and you specify how to do this in the {} or ().

# Did you learn any new skills or tricks?
# I learned how .reduce works.

# How confident are you with each of the learning objectives?
# I think that I'm fairly confident in the learning objectives for this exercise.  I'm also
# getting more used to pseudocoding.

# Which parts of the challenge did you enjoy?
# I enjoyed refactoring and thinking about how to structure the code

# Which parts of the challenge did you find tedious?
# This was a relatively short exercise so I didn't find anything tedious
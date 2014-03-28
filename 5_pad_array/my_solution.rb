# U1.W3: Pad an Array!

# I worked on this challenge [by myself].

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself].

# 1. Pseudocode

# What is the input?
# an array

# What is the output? (i.e. What should the code return?)
# a padded array

# What are the steps needed to solve the problem?
# define class Array

# non destructive
# define a method that takes an array and parameters length and padding (default nil)
# if array length is < length
#   set remainder equal to length - array.length
#   make a new array that is remainder long and contains padding
#   take array and add to new array
# otherwise, just return a copy of array

# destructive
# define a method that takes an array and parameters length and padding (default nil)
# if array length is < length
# 	then add padding to end of array
#   return array
# otherwise, just return array


# 2. Initial Solution

# class Array
# 	def pad (length, padding = nil)
# 		if self.length < length
# 			remainder = length - self.length
# 			padded = Array.new(remainder, padding)
# 			return self + padded
# 		else
# 			return Array.new(self)
# 		end
# 	end

# 	def pad! (length, padding = nil)
# 		if self.length < length
# 			while self.length < length
# 				self.push(padding)
# 			end
# 			return self
# 		else
# 			return self
# 		end
# 	end	
# end

# 3. Refactored Solution

class Array
	def pad (length, padding = nil)
		if self.length < length
			remainder = length - self.length
			padded = Array.new(remainder, padding)
			return self + padded
		else
			return self.clone
		end
	end

	def pad! (length, padding = nil)
		if self.length < length
			while self.length < length
				self << padding
			end
			return self
		else
			return self
		end
	end	
end

# Note: I did some minor refactoring, but I am sure there is a more elegant solution, I just haven't found it yet


# 4. Reflection 

# What parts of your strategy worked? What problems did you face?
# I knew roughly how to structure this from the beginning, but I wasn't sure about syntax and how to go about it.
# Google was definitely my friend this time around.  I faced the problem of not knowing how to copy an array and I
# had forgotten most of what we learned about classes.  I also was unaware of 'self'

# What questions did you have while coding? What resources did you find to help you answer them?
# I had questions about arrays and classes and used the following links to answer them

# I read through almost the entire doc
# http://www.ruby-doc.org/core-2.1.1/Array.html

# helpful refresher
# http://www.tutorialspoint.com/ruby/ruby_classes.htm

# about 'self' - I didn't know this existed and didn't understand it all but it clear up some things.
# http://stackoverflow.com/questions/2505067/class-self-idiom-in-ruby

# What concepts are you having trouble with, or did you just figure something out? If so, what?
# I initially had trouble with how to refer to the array within the array class, but I figured out that I should
# use 'self' with some googling and the link above

# Did you learn any new skills or tricks?
# I learned that you can use .clone, use self and relearned the "shovel" method

# How confident are you with each of the learning objectives?
# I think I am able to put the learning objectives into practice with a bit more research/practice.  I will need more
# repition for it to really get hammered in.

# Which parts of the challenge did you enjoy?
# I enjoyed using new syntax and figuring out how to approach the set of tests.

# Which parts of the challenge did you find tedious?
# I didn't find it tedious, but I got frustrated when I had an idea and wasn't able to implement it due to lack of 
# knowledge.
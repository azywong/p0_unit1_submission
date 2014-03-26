# U1.W3: SOLO CHALLENGE Calculate the Median!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
# an array

# What is the output? (i.e. What should the code return?)
# the median of array

# What are the steps needed to solve the problem?
# define method median that takes input array
# sort the contents of array
# get array's length
# if array is even numbered length
# 	set e_middle to array's length /2
#	median = (array[e_middle] + array[e_middle +1])/2
# if array is odd numbered length
#	set o_middle to (array's length - 1) / 2
#	median = array[o_middle]
# return median

# 2. Initial Solution
# def median (array)
# 	array.sort!
# 	length = array.length
# 	if length % 2 == 0
# 		e_middle = length / 2
# 		median = (array[e_middle].to_f + array[e_middle - 1].to_f) / 2
# 	else
# 		o_middle = (length - 1)/2
# 		median = array [o_middle]
# 	end
# 	return median
# end


# 3. Refactored Solution
def median (array)
	array.sort!
	if array.length % 2 == 0
		e_middle = array.length / 2
		median = (array[e_middle].to_f + array[e_middle - 1].to_f) / 2
	else
		o_middle = (array.length - 1)/2
		median = array[o_middle]
	end
end


# 4. Reflection 

# What parts of your strategy worked? What problems did you face?
# Because we covered this before in Javascript, I had a rough idea of how to go about this
# challenge when I read the description.  The main issue I faced was that I forgot that ruby
# doesn't automatically do floating numbers/decimal points.  So I had to add that in, in
# order to make it work.

# What questions did you have while coding? What resources did you find to help you answer them?
# I didn't really have any questions while coding and didn't use any outside resouces this time.

# What concepts are you having trouble with, or did you just figure something out? If so, what?
# I didn't really have trouble with any concepts, but I did remember how ruby handles numbers
# and will keep that in mind for next time!

# Did you learn any new skills or tricks?
# I didn't really learn anything new, it was mostly a refresher.

# How confident are you with each of the learning objectives?
# I'm fairly confident with the learning objectives.  I feel like I'm relying heavily on 
# previous notes I took though, so I should try coding with less referencing.

# Which parts of the challenge did you enjoy?
# I enjoyed going through and coding the challenge because when we did this in Javascript
# I just did the Pseudocode bit.

# Which parts of the challenge did you find tedious?
# none!
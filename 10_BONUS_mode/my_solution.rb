# U1.W3: Calculate the mode!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself].

# 1. Pseudocode

# What is the input?
# 	an array of numbers or strings

# # What is the output? (i.e. What should the code return?)
# 	an array containing the value(s) that appear most often in the original array

# # What are the steps needed to solve the problem?
# 	define method mode that accepts array as input
	
# 	define new hash count

# 	iterate over array using each
# 		increment counts[x] by one

# 	count now contains key: value, where
# 		key is value from original array
# 		value is number of times key appears in orignal array

# 	set array named hash_values equal to count's values
# 	sort hash_values

# 	using each_key, select from count keys that equal hash_values[-1]
# 	then shovel corresponding keys into array mode.



# 2. Initial Solution

# def mode (array)

# 	count = Hash.new(0)

# 	array.each {|x| count[x] += 1}

# 	hash_values = count.values

# 	hash_values.sort!

# 	array_mode = []

# 	count.each_key {|k| 
# 		if count[k] == hash_values[-1]
# 			array_mode << k
# 		else
# 		end
# 	}

# 	return array_mode

# end


# 3. Refactored Solution

def mode (array)

	count = Hash.new(0)

	array.each {|x| count[x] += 1}

	hash_values = count.values.sort!

	array_mode = []

	count.each_key {|k| 
		array_mode << k if count[k] == hash_values[-1]
	}

	return array_mode

end


# 4. Reflection 

# What parts of your strategy worked? What problems did you face?
# I wasn't sure how to approach this challenge and spent a lot of time just reading over ruby methods and information about 
# hashes and arrays until I was able to get some ideas.

# What questions did you have while coding? What resources did you find to help you answer them?
# I didn't know about .each_key or .values.  I also didn't realize you could use a hash as a counter right off the bat.

# I used the links below and probably another page or two that I closed accidentatlly.  I googled a lot throughout this.

# http://www.ruby-doc.org/core-2.1.1/Hash.html#method-i-each_key
# http://stackoverflow.com/questions/9560335/ruby-hash-to-array-of-values

# I also read through ruby doc's documentation on hashes and arrays several times.

# What concepts are you having trouble with, or did you just figure something out? If so, what?
# I had no idea that you could use a hash as a counter, and admittedly the challenge hinted at this, but it took a lot of
# research and thinking about the problem before I got to pseudocoding.  Actually my original pseudo code was going in a
# direction that wouldn't have worked, and I have to start over serveral times.

# Did you learn any new skills or tricks?
# I learned a bunch from the links above, and I totally didn't think of the way to solve this challenge immediately
# I was really tempted to just google the solution several times when I came up with nothing.

# How confident are you with each of the learning objectives?
# I think I'm fairly shaky with the learning objectives.  I got the challenge done, yes.  But it also took me most of the
# day and required lots of outside research and reading.  I'm not sure I could complete something similar without help.

# Which parts of the challenge did you enjoy?
# I enjoyed finally getting no errors on my code.  For the longest time I came up with nothing.  Then I figured out how to
# return the mode if it was a single value.  I was stuck for a while there and took a break.  Then I came back, deleted a
# few lines that weren't going to change the outcome and started fresh.

# Which parts of the challenge did you find tedious?
# I found researching and the intial 'I don't know how to approach this' extremely tedious.  I was just reading documentation
# on ruby docs and looking for anything that looked helpful.  This took a while and I wandered off into many different 
# unprofitable directions.
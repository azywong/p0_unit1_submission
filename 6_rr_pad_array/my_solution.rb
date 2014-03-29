# U1.W3: Review and Refactor: Pad an Array

# I worked on this challenge [with: Adam Dzuik].



# 1. First Person's solution I liked

#    What I learned from this solution
# his use of the until loop was a great idea and created a compact method without using if statement

# Copy solution here: (ClarkGH)

class Array
	def pad(min_size, optional_value = nil)
		array_clone = self.clone
		array_clone << optional_value until array_clone.length >= min_size
		return array_clone
	end

	def pad!(min_size, optional_value = nil)
		self << optional_value until self.length >= min_size
		return self
	end
end


# 2. Second Person's solution I liked

#    What I learned from this solution
# she used recursion in the nondestructive pad method and was able to get rid of some repition

# Copy solution here: (ckammerl)


	class Array 
		def pad!(min, x = nil)
		len = self.length
		if len < min
			pad_num = (min - len)
			pad_num.times do self.push(x) end
		end 
		return self
	end


	def pad(min, x = nil)	
		padded_arr = self.clone
		padded_arr.pad!(min, x)
		return padded_arr
	end
end


# 3. My original solution:

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


# 4. My refactored solution:

class Array
    def pad(min_size, optional_value = nil)   
        padded_arr = self.clone
        padded_arr.pad!(min_size, optional_value)
    end

    def pad!(min_size, optional_value = nil)
        self << optional_value until self.length >= min_size
        return self
    end
end

# 5. Reflection

# What parts of your strategy worked? What problems did you face?
# We looked at a bunch of people's solutions together to see what worked.  It was really helpful to have an extra set of eyes
# to look at so many files.  The problem we faced was mainly navigating and keeping track of so many solutions and narrowing them
# down to tow relevant ones we could learn from.

# What questions did you have while coding? What resources did you find to help you answer them?
# No questions really.  I understood the code used, but just didn't think of applying it in that way

# What concepts are you having trouble with, or did you just figure something out? If so, what?
# I'm still having a bit of trouble being able to put my thoughts down in usable pseudocode.  But its getting easier!

# Did you learn any new skills or tricks?
# I refreshed myself on the until loop and on recursion!  Both are not things that I use intuitively

# How confident are you with each of the learning objectives?
# I'm alright with the learning objectives.  I really marvel at some people's compact solutions.

# Which parts of the challenge did you enjoy?
# I enjoyed looking at different ways others tackled the problem!

# Which parts of the challenge did you find tedious?
# I found navigating other people's solutions tedious because there wasn't a direct fork to click from, but the folder
# containing all the assignments.
# U1.W3: Research Methods

i_want_pets = ["I", "want", 3, "pets", "but", "I", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, 
            "Annabelle" => 0, "Ditto" => 3}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  # Your code here!
end

def my_hash_finding_method(source, thing_to_find)
  # Your code here!
end

# Identify and describe the ruby method you implemented. 
# 
#
#

# Person 2

def my_array_modification_method(source, thing_to_modify)
  new_array = []
  source.each { |a|
  if a.is_a? Integer
    new_array << a + thing_to_modify
  else
    new_array << a
  end
  }
  source.replace(new_array)
end

def my_hash_modification_method(source, thing_to_modify)
  source.each {|x, y| source[x] = y + thing_to_modify}
end

# Identify and describe the ruby method you implemented. 
# I used .each in this and .replace for the array.  .each iterates over each item in the hash or array.
# .replace replaces the original array with another array
#


# Person 3
def my_array_sorting_method(source, thing_to_locate)
  # Your code here!
end

def my_hash_sorting_method(source, thing_to_locate)
  # Your code here!
end

# Identify and describe the ruby method you implemented. 
# 
#
#


# Person 4
def my_array_deletion_method(source, thing_to_delete)
  #Your code here!
end

def my_hash_deletion_method(source, thing_to_delete)
  #Your code here!
end

# Identify and describe the ruby method you implemented. 
# 
#
#


################## DRIVER CODE ###################################
# HINT: Use `puts` statements to see if you are altering the original structure with these methods. 
# Each of these should return `true` if they are implemented properly.

p my_array_finding_method(i_want_pets, "t") == ["want","pets","but"]
p my_hash_finding_method(my_family_pets_ages, 3) == ["Hoobie", "Ditto"]
p my_array_modification_method(i_want_pets, 1) == ["I", "want", 4, "pets", "but", "I", "only", "have", 3 ]
p my_hash_modification_method(my_family_pets_ages, 2) == {"Evi" => 8, "Hoobie" => 5, "George" => 14, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}
p my_array_sorting_method(i_want_pets, "pets") == ["3", "4", "I", "but", "have", "only", "pets", "want"]
p my_hash_sorting_method(my_family_pets_ages, age) == [["Annabelle", 2], ["Ditto", 5], ["Hoobie", 5], ["Bogart", 6], ["Poly", 6], ["Evi", 8], ["George", 14]] 
# This may be false depending on how your method deals with ordering the animals with the same ages.
p my_deletion_method(i_want_pets, "a") == ["I", 4, "pets", "but", "I", "only", 3 ]
p my_deletion_method(my_family_pets_ages, "George") == {"Evi" => 8, "Hoobie" => 5, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}

# Reflect!
# What parts of your strategy worked? What problems did you face?
# I wasn't sure how to approach this, so I spent a lot of time researching and trying to figure out how to accomplish this
# with a method that worked on both hash and array.  I'm still not sure this was the best way to go about it.

# What questions did you have while coding? What resources did you find to help you answer them?
# I read through most of the page of 
# http://www.ruby-doc.org/core-2.1.1/Array.html
# http://www.ruby-doc.org/core-2.1.1/Hash.html
# but from what I understood, map would have worked with an array but not a hash

# What concepts are you having trouble with, or did you just figure something out? If so, what?
# I guess I was having trouble with this challenge in general

# Did you learn any new skills or tricks?
# I learned about .replace, which will replace the original array's contents with the new contents.

# How confident are you with each of the learning objectives?
# I'm not too confident with the learning objectives, and I'm not sure if I was totally off target or not.

# Which parts of the challenge did you enjoy?
# I enjoyed learning about hashes and arrays.

# Which parts of the challenge did you find tedious?
# # researching and not coming up with something I could use
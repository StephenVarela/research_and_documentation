
# Read the docs
# Try out the method in irb using a few different values
# Once you feel like you understand how it works, write down
# its arguments (name, data type, optional/required, default value if any)
# its return type
# Write an example (in code) of how to use the method
# run your code to make sure your example is valid!


# String
#   length

#length is a method that can be used on a string or array
#strings can be viewed as an array of characters
#The length function returns the number of elements in an array or a string
#alternatively you can also use the size method to achieve the same functionality

#the length method is called on the object and does not take any arguments explicitly. It performs the operation on the object it is called on

#the return value is an integer

#examples
my_string = "Hello World"
puts my_string.length #prints the number of characters in the string including white space
puts my_string.size #prints the number of characters in the string including white space

my_array = [1,2,3,4,5]
puts my_array.length


#   strip
#removes all trailing white space characters of a string including new lines, return, tabs etc as long as they appear at the end of the string.

#The method is called on an object of type string and does not take any input arguments.

#the return value is a new string. This does not modify the original string value that the method is called on

my_string = "hello          "
stripped_string = my_string.strip

puts my_string + "|" #to show where string ends
puts stripped_string + "|" #to show where string ends

#   split
# split divides a string and returns an array of substrings based on a specified delimiter pattern.

#if no delimeter pattern is specified, the split function when called on a string will ignore beginning and ending white spaces and split the string into arrays of substrings by its contents

#the function also takes a limit parameter which is used to limit the number of returned elements in the substring

my_string = " hello world ".split #returns ["hello", "world"]
puts my_string

my_string = "hello world sup".split(' ', 2) #returns ["hello", "world sup"]
puts my_string.inspect

#   start_with?
#checks to see if the string it is applied on begins with a specified substring.

#the method returns a boolean

#requires an argument which is used to check if the string begins with the argument.

#if no argument is specified, then the method returns false

#if the argument is found at the beginning of the string it returns true

my_string = "hello my name is Stephen"
puts my_string.start_with?("he") #returns true

puts my_string.start_with?("HE") #returns false (case sensitive)

puts my_string.start_with? #returns false

# you can also specify multiple arguments to check for multiple patterns as an OR functionality i.e does the string start with pattern1 OR pattern2 OR ...

puts my_string.start_with?("HE", "he") #returns true


# Array
#   first
#method applied on an array which returns an object (the first element in the array)

#alternatively you can specify a number of elements which then results in the function returning the first (number) of elements in the array it is called on

my_array = [1,2,3]
puts my_array.first.inspect #should print
puts my_array.first(2).inspect # should print [1,2]

#note that arrays can store any object so the return type is whatever object the first elements are (in the above example they are integers)

#   delete_at
#delete at is a method that can be used to delete an element of an array at the specified location. Note that the indicies begin at 0

#the method also modifies the array object it is called on, but returns the element that it delteted. If no object is deleted, the method will return nil

my_array = [1,2,3,4,5]
puts my_array.delete_at(2) #should delte 3 and return 3
puts my_array.inspect #prints the modified array

#   delete
#method used on an array to delete a specific entry if the entry is known.

#if the entry (argument) does not exist in the array, the delete function returns nil. If it finds the object, it will delete it and return the deleted object

#the method will also modify the object it is called on. i.e the value will be deleted from the original array

my_array = [1,22,3,4,5]
puts my_array.delete(22) #deletes the entry at index 1
puts my_array.inspect #prints the modified array
#   pop
#This method deletes the last entry which was added to the array i.e the last element of the array (and returns the object)

#you can specify an integer which will pop or delete the last x number of elements of the array (and returns the object whioch is the array of x elements)

my_array = [1,2,3,4,5]
puts my_array.pop ##pop last element
puts my_array.inspect

my_array = [1,2,3,4,5]
puts my_array.pop(2) ##pop last 2 elements
puts my_array.inspect

# Hash
#   to_a
#the to_a method when applied to a hash returns a nested array of key value pairs (i.e separated by commas)

#it does not take any arguments
#returns an array

my_hash = {"a" => 1, "b" => 2, "c" => 3}
puts my_hash ##checking hash declaration
puts my_hash.to_a.inspect #converts hash to a nested array

#   has_key?
#takes an argument of a key which can be either a string or symbol.  the function checks the hash it is called on to see if the specified string or symbol exists in the hash.

#if the key exists, the method returns true, else if it doesnt find the key it returns false

#the return value is a boolean

my_hash = {"a" => 1, "b" => 2, "c" => 3}
puts my_hash.has_key?("a") #should return true

puts my_hash.has_key?("z") #should return false

puts my_hash.has_key?(1) #should return false
#puts my_hash.has_key? #should return false
#not specifying arguments results in an error. This function will throw an error if no argument is specified

#   has_value?

#similar to the has keys funtion, the has value checks all the values in the hash the method is called on to identify if the argument exists in the hash.

#the argument can be any object
my_hash = {"a" => 1, "b" => 2, "c" => [3,4]}
puts my_hash.has_value?(2) #should return true
puts my_hash.has_value?(5) #should return false
puts my_hash.has_value?([3,4]) #should return true
#puts my_hash.has_value?() #will throw an error

# Time
#   now

#acts like a default constructor of a time object.

#creates a time object and passes in the current time parameters to the object

puts Time.now.inspect ##prints out current time
puts Time.now.class ##creates a time object


# File
#   exist?

#like time, file is another object
#The exist? method checks to see if a file exists based on a system call that the function runs in the background and returns a boolean (true or false) depending on the result

#file is an object that is able to store all of the information of a file that is accessible by the ruby program


#i have created an empty file testfile.txt in the same directory

filename= "testfile.txt"
puts File.exist?(filename) #outputs true because the function was able to find the File

puts File.exist?("random") #should return false

#do not use exists!!!! (says the docs)

#puts File.exists?() ##this funtion requires an argument

#   extname
#takes a file path as an argument (as a string)
#outputs the file type as a string determined by the last period in the input argument

puts File.extname("test.txt") #should return .txt

#Question 1. Given an array of strings, print only the strings that have exactly 4 characters.

#Overall goal - to print string element with 4 characters only.


#peudocode - working with array of strings: 
animals = ["Bird", "Cat", "Dog", "Elephant", "Lion"]

#1. Use each method. Each method is needed to iterate over each word.
  #  animals.each do |animal|
#2. Convert the string to length method 
  #  animal.length
#3. Use if and comparison operator to equal to 4.
  #  if animal.length == 4 
#4. Display the results in puts 
  #  puts animal if animal.length == 4

animals.each do |animal|
    puts animal if animal.length == 4
end



#Question 2. Start with an array of strings with a mix of uppercase and lowercase letters. Print every word in all lowercase letters.

#Overall goal - print each word with lowercase.

#1. Working with an array of strings

fourteeners = ["gRAys pEak", "toRReys PeaK", "MOUNt EVANS", "longS pEAk", "pIkES PEAK", "mOUNT bierSTADT"]

#2. Use the each method

fourteeners.each do |fourteener|

#3. Use the .downcase method and puts method to print the results.

puts fourteener.downcase

#4. end the code block
end

#Question 3. Write a method or function that removes all instances of the letter <strong>s</strong> in a string. The method or function should accept a string as an argument and return the same string with every instance of the letter <strong>s</strong> removed.

#1. Assign a method and method name, and a parameter 
def no_s(words)

#2. Use downcase function for the words so S and s are all the same case. Then use the delete function to delete s. 
words.downcase.delete "s"

#3. End code block
end

#4. run an example word, print result using puts
puts no_s("Seashell")
puts no_s("Sesame Seeds")


#Question 4. Start with an array of hobbies. Print out only the words that end in "ing".

#Overall goal: Print words ending with "ing" from an array.

hobbies = ["Climing", "Biking", "Snowboarding", "Yoga", "Pilates", "Archery"]

#1. Use the each method to iterate through each word

hobbies.each do |hobbie|

#2. Use the if method and include method on the each hobbie, then print the word that includes "ing" only. 
    puts hobbie if hobbie.include?("ing")
#3. End code block
end
#4. Results should only print "Climbing" "Biking" and "Snowboarding"

#Question 5. Start with an array of travel destinations. Print every travel destination in alphabetical order embedded in a sentence using string interpolation. For example, if the destination is "New York City", print something like "The next place I want to visit is New York City!" 

#Overall goal: print a setence "The next place I want to visit is XXX!" with the XXX representing the each destination from the array in alphabetical order.

travel_destinations = ["Italy", "France", "Greece", "Japan", "Hawaii", "Korea"]

#1. Write a method that accepts a parameter.
def places_to_visit(destinations)

#2. Sort the travel destination using the sort! method
destinations.sort!

#3. Use the each method create each iteration of the destination
destinations.each do |destination|

#4. Write an interpolation setence "The next place I want to visit is #{destination}!", and print the statement using puts.
puts "The next place I want to visit is #{destination}!"

#5. End code block
end
end
#6. Run the method

places_to_visit(travel_destinations)


#Question 6. Given a sentence with only lowercase letters, print the same sentence with the first letter of every word capitalized. For example, if you were given "Turing is the best", return "Turing Is The Best" instead!

#Overall goal: To capitalize each word of the phrase.

#1. Create a method using a def and assiging a parameter.
def cap_each_word(phrase)

#2. Use the split method to split each word in the phrase into an array of words. Use map function to capitalize each word.
result = phrase.split.map { |word| word.capitalize }

#3. Use join method to join the word from array to string.
result.join(" ")

#4. End code block.
end
#5. Print example using puts method.
puts cap_each_word("This is a test phrase")
puts cap_each_word("Here is another testing. Is this method working?")


#Question 7. Write a method or function that determines how much a person will [pay in taxes in the United States](https://www.irs.gov/newsroom/irs-provides-tax-inflation-adjustments-for-tax-year-2022) based on their annual income. The method or function should accept a number representing the individual's annual income as an argument and return the amount they will owe in taxes for that year.

#Overall goal: When income is provided, it provides taxes owed that year.

#1. Create a method that has a parameter.
def income_tax(income)
#2. Use if method. If income is greater than $215,950, tax = 35%, elsif, if it's greater than $170,050, tax = 32%, and so forth, until lowest rate of 10% tax. Calculate tax by income * 0.35.
if income > 215950
  puts "You have to pay income tax of #{income * 0.35}"
elsif income > 170050 
  puts "You have to pay income tax of #{income * 0.32}"
elsif income > 89075
  puts "You have to pay income tax of #{income * 0.24}"
elsif income > 41775   
  puts "You have to pay income tax of #{income * 0.22}"
elsif income > 10275
  puts "You have to pay income tax of #{income * 0.12}"
else 
  puts "You have to pay income tax of #{income * 0.10}"
#3. End code block
end
end
#4. Print examples

income_tax(300000)
income_tax(220000)
income_tax(215950)
income_tax(170000)
puts
income_tax(88000)
income_tax(40000)
income_tax(10300)
income_tax(10000)

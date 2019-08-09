# Exercise 1 - Write a function sum_to(n) that uses recursion to calculate the
# sum from 1 to n (inclusive of n)

def sum_to(n)
    return 1 if n == 1
    return nil if n < 1
    n + sum_to(n - 1)
end

sum_to(5)  # => returns 15
sum_to(1)  # => returns 1
sum_to(9)  # => returns 45
sum_to(-8)  # => returns nil


# Exercise 2 - Write a function add_numbers(num_array) that takes in an array of Integers 
# and returns the sum of those numbers. Write this method recusively

def add_numbers(arr)
    return arr.first if arr.length <= 1
    arr.pop + add_numbers(arr)
end

add_numbers([1,2,3,4]) # => returns 10
add_numbers([3]) # => returns 3
add_numbers([-80,34,7]) # => returns -39
add_numbers([]) # => returns nil


# Exercise 3 - Let's write a method that will solve Gamma Function recursively.
# The Gamma Function is defined Γ(n) = (n-1)!

def gamma_fnc(num)
    return nil if num < 1
    return 1 if num == 1
    (num - 1) * gamma_fnc(num - 1)
end

gamma_fnc(0)  # => returns nil
gamma_fnc(1)  # => returns 1
gamma_fnc(4)  # => returns 6
gamma_fnc(8)  # => returns 5040


# Exercise 4 - Write a function ice_cream_shop(flavors, favorite) that takes in an
# array of ice cream flavors available at the ice cream shop, as well as the user's favorite ice cream flavor. 
# Recursively find out whether or not the shop offers their favorite flavor.

def ice_cream_shop(flavors, favorite)
    return false if flavors.empty?
    return true if flavors.last == favorite
    ice_cream_shop(flavors[0...-1], favorite)

end

ice_cream_shop(['vanilla', 'strawberry'], 'blue moon')  # => returns false
ice_cream_shop(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea')  # => returns true
ice_cream_shop(['cookies n cream', 'blue moon', 'superman', 'honey lavender', 'sea salt caramel'], 'pistachio')  # => returns false
ice_cream_shop(['moose tracks'], 'moose tracks')  # => returns true
ice_cream_shop([], 'honey lavender')  # => returns false


# Exercise 5 - Write a function reverse(string) that takes in a string and returns it reversed

def reverse(string)
    return "" if str.empty?
    reverse(string[1..-1] + string[0])
end

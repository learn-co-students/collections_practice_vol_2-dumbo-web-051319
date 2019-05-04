require 'pry'
# your code goes here
def begins_with_r(array)
  switch = true 
  array.each do |element|
    if element[0] != "r"
      switch = false
    end
  end
  switch
end

def contain_a(array)
  a_array = []
  array.each do |element|
    if element.include?("a")
      a_array << element
    end
  end
  a_array
end

def first_wa(array)
  array.each do |element|
    if element[0..1] == "wa"
      return element
    end
  end
end

def remove_non_strings(array)
  newArray = []
  array.each do |element|
    if element.class == String
      newArray << element
    end
  end
  newArray
end

def count_elements(array)
  
end
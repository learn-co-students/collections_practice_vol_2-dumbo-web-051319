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
  outArray = []
  array.each_with_index do |key, index|
    num = array.count(key)
    key.each do |name_key, value|
      if outArray.include?({:count => num, name_key => value}) == false
        outArray << {:count => num, name_key => value} #how do you add two key pairs in two steps?
      end
    end
  end
  outArray
end


def merge_data(keys, data)
  count = 0
  newArray = []
  newHash = {}  #needs to have an array inside. Put hash in array

  data.each do |name_key, data_hash|
    name_key.each do |data_key, data_element|
      newHash = newHash.merge(data_element)
      newHash = newHash.merge(keys[count])
      newArray << newHash
      count += 1
    end
  end
  newArray
end

def find_cool(array)
  newArray = []
  array.each_with_index do |key, index|
    key.each do |label, data|
      if key.fetch(label) == "cool" && label.to_s == "temperature"
        newArray << array[index]
      end
    end
  end
  newArray
end

def organize_schools(array)
  newHash = {}
  schoolArray = []
  array.each do |key, element|
    location = element.fetch(:location)
    
    if newHash.has_key?(location) == false
      newHash.merge!("#{location}" => [])
    end
    newHash[location] << key    
  end
  
  newHash
end
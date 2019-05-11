# your code goes here
#require 'pry'

def begins_with_r(tools)
tools.all? {|word| word[0] == "r" }
end

def contain_a(elements)
  arr = []
  elements.each do |words|
    if words.include?("a")
      arr << words
    end
  end
  arr
end

def first_wa(elements)
  elements.each do |words|
    if words[0..1] == "wa"
      return words
    end
  end
end

def remove_non_strings(array)
  arr = []
  array.each do |elements|
    if elements.is_a? String
      arr << elements
end
end
arr
end

def count_elements(array)
count= Hash.new(0)
new_arr= []
array.each do |k|
    count[k] +=1
end
count.each do |key, value|
  new_arr << key.merge(count:value)
end
  new_arr
end



def merge_data(keys, data)
new_arr = []
keys.each do |x|
  x.each do |key, value|
    data.each do |y|
      y.each do |key2, value2|
        if value == key2
          new_arr << x.merge(value2)
end
end
end
end
end
new_arr
end

def find_cool(hashes)
  arr =[]
  hashes.each do |hash|
    if hash[:temperature] == "cool"
      return arr << hash
end
end
end

def organize_schools(schools)
organized_school = {}
schools.each do |school,location|
  location.each do |key, value|
if organized_school[value] == nil
  organized_school[value] = [school]
else organized_school[value]<< school
end
end
end
organized_school
end

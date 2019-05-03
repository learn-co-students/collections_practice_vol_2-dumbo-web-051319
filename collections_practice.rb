require "pry"
# your code goes here
def begins_with_r (array)
  array.all? {|ele| ele[0] == "r"}
end
def contain_a (array)
  array.collect do |ele|
    if ele.include?("a")
      ele
    end
  end.compact
end
def first_wa (array)
  array.collect do |ele|
    if ele.to_s[0..1] == "wa"
      return ele
    end
  end
end
def remove_non_strings (array)
  array.collect do |ele|
    if ele.is_a? String
      ele
    end
  end.compact
end
#make an array list by delete the dubs
#each element has a Hash with 2 items
def count_elements (array)
  aryHolder = array.uniq
  aryHolder.each do |ele|
    ele[:count] = 0
  end
  for i in 0...aryHolder.length
    for k in 0...array.length
      if aryHolder[i][:name] == array[k][:name]
        aryHolder[i][:count] += 1
      end
    end
  end
  return aryHolder
end
#get correct formate which Keys is fine
#2 for loops for finding correct data with first_name
#insert data into merge
def merge_data (keys,data)
  merge = []
  for i in 0...keys.length
    data[0].collect do |key,value|
      if keys[i][:first_name] == key.to_s
        merge << keys[i].merge(value)
      end
    end
  end
  return merge
end
def find_cool (array)
  ary = []
  array.collect do |ele|
    ele.each do |key, value|
      if key.to_s == "cool" || value == "cool"
        ary << ele
      end
    end
  end
  return ary
end
#build {location => []}
#check and push in []
def organize_schools (hash)
  org = {}
  hash.each do |key, value|
    value.each do |loc, state|
      org[state] = []
    end
  end
  hash.each do |key, value|
    value.each do |loc, state|
      org[state] << key.to_s
    end
  end
  return org
end

# your code goes here
def begins_with_r(array)
  array.each do |word|
    if word[0].downcase != "r"
      return false
    end
  end
  return true
end

def contain_a(array)
  a_array = []
  array.each do |word|
    if word.include?("a")
      a_array.push(word)
    end
  end
  return a_array
end

def first_wa(array)
  array.each do |word|
    if word[0..1] == "wa"
      return word
      break
    end
  end
end

def remove_non_strings(array)
  string_array = []
  array.each do |element|
    if element.class == String
      string_array.push(element)
    end
  end
  return string_array
end

def count_elements(array)
  array.each do |hash|
    hash[:count] = 0
    name = hash[:name]
    array.each do |new_hash|
      if new_hash[:name] == name
        hash[:count] +=1
    end
  end 
  end.uniq
end


def merge_data(arr1, arr2)
  arr2[0].map do |name, prop_hash|
    new_prop_hash = {}
    arr1.each do |new_attr_hash|
      if new_attr_hash[:first_name] == name
        new_prop_hash = prop_hash.merge(new_attr_hash)
      end
    end
    new_prop_hash
  end
end


def find_cool(array)
  new_array = []
  array.each do |elem|
    elem.each do |value, key|
      if key == "cool"
        new_array.push(elem)
      end
    end
  end
  return new_array
end

def organize_schools(object)
  organized_schools = {}
  object.each do |school, location_hash|
    location = location_hash[:location]
    if organized_schools[location]
      organized_schools[location] << school
    else
      organized_schools[location] = []
      organized_schools[location] << school
    end
  end
   organized_schools
end

# def organize_schools(schools)
#   organized_schools = {}
#   schools.each do |name, location_hash|
#     location = location_hash[:location]
#     if organized_schools[location]
#       organized_schools[location] << name
#     else
#       organized_schools[location] = []
#       organized_schools[location] << name
#     end
#   end
#   organized_schools
# end
  #  wordlist.sort_by { |word| word.downcase }

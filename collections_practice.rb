# your code goes here
def begins_with_r(element)
  element.all? {|item| item.start_with?("r")}           #The all? method returns true if the block never returns false or nil
                                                        #for any element passed to it
end

def contain_a(element)
  element.select{|item| item.include?('a')}
end

def first_wa(element)
  element.find{|item| item.to_s.start_with?('wa')}            #The find method returns the first element for which block is not false
end

def remove_non_strings(element)
  element.delete_if{|item| item != item.to_s}
end

def count_elements(element)
#The uniq method returns a new array by removing duplicate values in self. If no duplicates are found, the same array value is returned.
  element.uniq.collect do |item|                      # Array#collect is same as Array#map and it applies the given block of code on all the items and returns the new array.
    item[:count] = element.count(item)
    item
  end
end

def merge_data(keys, data)
  keys.map do |key|
    key.merge(data[0][key[:first_name]].to_h)
  end
end

def find_cool(array)
  array.select { |item| item[:temperature] == 'cool'}
end

def organize_schools(schools)
  schools_by_location = {}
  schools.each do |key, value|
    if (schools_by_location[value[:location]] == nil)
      schools_by_location[value[:location]] = [key]
    else
      schools_by_location[value[:location]] << key
    end
  end
  schools_by_location
end

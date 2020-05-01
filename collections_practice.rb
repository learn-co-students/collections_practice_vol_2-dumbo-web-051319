def begins_with_r(array)
    array.each do |x|
      if x[0] != "r"
        return false
      end
    end
  return true
end

def contain_a(array)
  a_list = [ ]
    array.each do |word|
    if word.include?("a") == true
      a_list << word
    end
  end
  a_list
end

def first_wa(array)
  array.find{|word| word.to_s.start_with?('wa')} 
    # new_list = []
  # array.find do |word|
  #   if word.start_with?("wa")
  #     new_list << word
  #   end
  # end
  # new_list
end

def remove_non_strings(array)
  array.delete_if do |word| 
    word.class != String
  end
end

def count_elements(elements)
  elements.uniq.collect do |element|                     element[:count] = elements.count(element)
    element
  end
end
  # array_of_hashes.each_with_object(Hash.new) do |count, new_hash|
  #   if new_hash[count]
  #     new_hash[count] +=1
  #   else 
  #     new_hash[count] = 1
  #   end
  # end

def merge_data(array1, array2)
 new_merged_data = []
  array1.each do |element|
    element.each do |key, value|
      array2.each do |element2|
        element2.each do |k, v|
          if value == k
            new_merged_data << element.merge(v)
          end
        end
      end
    end
  end
  new_merged_data
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

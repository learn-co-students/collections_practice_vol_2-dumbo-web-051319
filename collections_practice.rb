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
  new_obj = {}
  array.each do |elem|
    elem.each do |key, value|


    end
  end
  return new obj
end


def merge_data(obj1, obj2)
  array = obj1.concat(obj2)
  array.each do |element|
    element.merge
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
  object.sort_by(key)
end
  #  wordlist.sort_by { |word| word.downcase }

# your code goes here
require 'pry'

def begins_with_r(array)
  array.each do |word|
    if word[0].downcase != "r"
      return false
    end
  end
  return true
end

def contain_a(array)
  a_arr = []
  array.each do |word|
    if word.include?("a")
      a_arr << word
    end
  end
  return a_arr
  binding.pry
end

def first_wa(array)
  array.each do |word|
    if word[0..1] == "wa"
      return word
    end
  end
end

def remove_non_strings(array)
  array.each do |elements|
    array.delete_if { |elements| elements != elements.to_s }
  end
end

def count_elements(array)
  array.group_by(&:itself)
   .map{|key, value| key.merge(count: value.length)}
end

def merge_data(keys, data)
	data = data[0]
	new_data = []
	keys.each do |key|
		new_data << data[key[:first_name]].merge(key)
	end
	new_data
end

def find_cool(hashes)
	cool_hashes = []
	hashes.each do |hash|
		hash.each do |k, v|
			if k == "cool" || v == "cool"
				cool_hashes << hash
			end
		end
	end

	cool_hashes
end

def organize_schools(hash)
    locations = {}
    hash.values.each { |location| locations[location.values[0]] = [] }
    hash.each { |school, location| locations[location.values[0]] << school }
    locations
  end

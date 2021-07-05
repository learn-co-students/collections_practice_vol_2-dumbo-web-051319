def begins_with_r(tools_array)
  tools_array.map { |e| e.start_with?("r") }.include?(false) ? false : true
end

def contain_a(array)
  return_array = []
  array.each do |e|
    return_array << e if e.include?("a")
  end
  return_array
end

def first_wa(array)
  array.select {|e| e.to_s.include?("wa")}[0]
end

def remove_non_strings(array)
  array.delete_if {|e| e.class != String}
end

def count_elements(array)
  return_array = []
  count = Hash.new(0)
  array.each {|e| count[e] += 1}
  count.each do |hash,cnt|
    return_array << hash.merge({:count => cnt})
  end
  return_array
end

def merge_data(first, second)
  merged = []
  second.each do |e|
    first.each do |hash|
      hash.each do |k,v|
          merged << hash.merge(e[v]) if e.keys.include?(v)
      end
    end
  end
  merged
end

def find_cool(hash)
  found = []
  hash.each do |e|
    found << e if e.values.include?("cool")
  end
  found
end

def organize_schools(hash)
  organized = {}
  hash.each do |school,location_h|
    location_h.each do |k,v|
      if organized.keys.include?(v)
        organized[v] << school
      else
        organized[v] = [school]
      end
    end
  end
  organized
end

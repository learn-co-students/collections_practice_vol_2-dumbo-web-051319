require 'pry'

def begins_with_r(array)
    array.each do |element|
        if element.start_with?("r") != true
            return false
        end
    end
    true
end


def contain_a(array)
    array.select do |element| 
        element.include?("a")
        # binding.pry
    end
end


def first_wa(array)
    array.detect do |element|
        # binding.pry
       element.to_s.start_with?("wa")
    end
end

def remove_non_strings(array)
    array.delete_if {|element| !(element.is_a? String)}
end

def count_elements(array)
    array.each do |element|
       array.count(element) 
    end
end

# ******************************
def count_elements(array)
    counts = Hash.new(0)
    array.each { |element| counts[element] += 1 }
    
    return_array = []
    counts.each do |element,num| 
      element.each { |key, val| return_array << {key => val, :count => num} }
    #   binding.pry
    end
    return_array
end
# *******************************

def merge_data(keys,data)
    merged_hashes = []
    data.each do |hash|
        
      hash.each do |name, info|
        keys.each do |key_val|
            # binding.pry
          merged_hashes << key_val.merge(info) if key_val.values[0] == name
        end
      end
    end
    merged_hashes
   end
# [{:first_name=>"blake", :motto=>"Have a koala-ty day!"},
# {:first_name=>"ashley", :motto=>"I dub thee, 'Lady Brett Ashley'."}]

# [{"blake"=>{:awesomeness=>10, :height=>"74", :last_name=>"johnson"},
#   "ashley"=>{:awesomeness=>9, :height=>60, :last_name=>"dubs"}}]

def find_cool(array)
    # binding.pry
    new_array = []
    array.each do |hash|
        hash.each do |key, value|
            if value == "cool"
                new_array << hash
                # binding.pry
            end 
        end
    end
    new_array
end

# def organize_schools(array)
#     # binding.pry
#     new_array = []
#     array.each do |school, location|

#         location.each do |key, value|
            
#         return ""
#         end
        
#     end
    
    
# end

# {"flatiron school bk"=>{:location=>"NYC"},
#  "flatiron school"=>{:location=>"NYC"},
#  "dev boot camp"=>{:location=>"SF"},
#  "dev boot camp chicago"=>{:location=>"Chicago"},
#  "general assembly"=>{:location=>"NYC"},
#  "Hack Reactor"=>{:location=>"SF"}}
# *******************************
def organize_schools(hash)
    locations = {}
    hash.values.each { |location| locations[location.values[0]] = [] }
    # binding.pry
    hash.each { |school, location| locations[location.values[0]] << school }
    locations
  end 
#   *********************************
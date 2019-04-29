require 'pry'

def begins_with_r(words)
	words.each do |word|
		return false unless word[0] == 'r'
	end

	true
end

def contain_a(words)
	a_words = []
	words.each do |word|
		a_words << word if word.index('a')
	end

	a_words
end

def first_wa(words)
	words.each do |word|
		return word if word.to_s.start_with?('wa')
	end
end

def remove_non_strings(words)
	strings = []
	words.each do |word|
		strings << word if word.is_a?(String)
	end

	strings
end

def count_elements(name_hashes)
	counted = []
	counted_hashes = []
	name_hashes.each do |name_hash|
		if not counted.index(name_hash[:name])
			counted << name_hash[:name]
			name_hash[:count] = name_hashes.count(name_hash)
			counted_hashes << name_hash
		end
	end

	counted_hashes
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
			if k == 'cool' || v == 'cool'
				cool_hashes << hash
			end
		end
	end

	cool_hashes
end

def organize_schools(schools)
	locations = []
	new_hash = {}
	schools.values.each do |h|
		locations << h.values
	end
	locations.flatten.uniq.each do |location|
		new_hash[location] = []
		schools.each do |k, v|
			if v[:location] == location
				new_hash[location] << k
			end
		end
	end

	new_hash
end
##Debugging
def increment_dictionary_values(d, i)
    result = {}
    d.each{|k, v| result[k] = v + i }
    return result
end

d = {'a': 1}
dd = increment_dictionary_values(d, 1)
ddd = increment_dictionary_values(d, -1)

puts d
puts dd
puts ddd
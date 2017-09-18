first = 2
last = ARGV.first.to_i
if first > last
puts ''
  return
end
seach_list = first..last
prime_number_list = [2]
while true
  seach_list = seach_list.select { |i| i % first != 0  }
  if (first * first) > last
     break
  end
  prime_number_list.push(first = seach_list.first)
end
puts (prime_number_list + seach_list).join(', ')

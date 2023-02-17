alfavit = ("a".."z").to_a

alfavit_hesh = ["a", "e", "i", "o", "u", "y"]
hesh = {}
alfavit.each_with_index do |l, i|
  hesh[l] = i + 1 if alfavit_hesh.include?(l)
end

puts hesh
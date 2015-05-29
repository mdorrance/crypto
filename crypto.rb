def encrypted_message
key = 13
shift = key.modulo(26)
message = "This is my secret"

alpha = ('a'..'z').to_a + ('A'..'Z').to_a
puts alpha.inspect

puts message.chars.inspect
index = []
message.chars.each do |letter|
  if letter == " "
    index << " "
  else
    if alpha.index(letter) < 25
      index << (alpha.index(letter) + key) % 26
      print "#{letter} #{index}"
    else
      alpha.index(letter) > 25
      index << (((alpha.index(letter) + key) % 26) + 26)
      print "#{letter} #{index}"
    end
    end
end
print index
encrypt = []
  index.each do |number|
    if number == " "
      encrypt << " "
    else
    encrypt << alpha[number]
    print "#{encrypt}"
    end
  end
  puts encrypt.join
end
puts encrypted_message

# encrypted_message = "Guvf vf zl frperg"
def encrypt(message)
  abc = "abcdefghijklmnopqrstuvwxyz"
  big_abc = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
  alphabet = abc.chars
  big_alphabet = big_abc.chars
  cipher = message.chars
  key = 13

  encrypted = []

  cipher.each do |letter|
    if letter == letter.downcase
       cipher[letter] == alphabet[letter] &&
          cipher[letter] == cipher[letter] && letter + key > 22
        encrypted << alphabet[22 - letter+key]
    elsif letter == letter.upcase
      cipher[letter] == big_alphabet[letter] &&
        cipher[letter] == cipher[letter] && letter + key > 22
        encrypted << big_alphabet[22 -letter+key]
      # elsif cipher[letter] == big_alphabet[letter]
    else
      cipher[letter] == " "
              encrypted << " "
    end
  end
  print encrypted.join("")
end






puts encrypt("My Message")
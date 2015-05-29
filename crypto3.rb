
class EncryptionEngine
  def initialize (shift_num, alphabet = ("a".."z").to_a.join)
    @alphabet = alphabet
    @shift_num = shift_num.modulo(26)
  end


  def encrypt(message)
    encrypted = []
    values = message.chars.map { |character|
      @alphabet.index(character) + @shift_num - @alphabet.size}
    values.each do |n|
      encrypted << @alphabet[n]
    end
    puts encrypted.join
  end

  def decrypt(message)
    message.chars.map {|character|
      @alphabet.index(character) }

  end
end
ya = EncryptionEngine.new 13
ya.encrypt ("mymessage")
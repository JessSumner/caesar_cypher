class Encryption

  def alphabet
    alphabet = ("a".."z").to_a
  end

  def encrypt(string)
    cypher = string.split("").map do |letter|
      index = alphabet.find_index(letter) + 5
      alphabet[index]
    end
    cypher.join
  end
end

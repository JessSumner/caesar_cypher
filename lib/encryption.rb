require_relative 'application_helper'
class Encryption
  def encrypt(string)
    cypher = string.split("").map do |letter|
      index = alphabet.find_index(letter) + 5
      if index <= alphabet.length 
        alphabet[index]
      else
        alphabet[index - alphabet.length]
      end
    end
    cypher.join
  end
end

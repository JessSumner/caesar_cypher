require_relative 'application_helper'
class Encryption
  def encrypt(string, shift=5)
    cypher = string.split("").map do |letter|
      index = alphabet.find_index(letter) + shift
      if index <= alphabet.length 
        alphabet[index]
      else
        alphabet[index - alphabet.length]
      end
    end
    cypher.join
  end

  
end

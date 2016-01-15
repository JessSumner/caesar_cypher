require_relative 'application_helper'
class Encryption
  def encrypt(string, shift=5)
    cypher = string.split("").map do |letter|
      index = characters.find_index(letter) + shift
      if index < characters.length 
        characters[index]
      else
        characters[index - characters.length]
      end
    end
    cypher.join
  end

  
end

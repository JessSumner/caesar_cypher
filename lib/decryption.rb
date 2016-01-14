require_relative 'application_helper'
class Decryption
  def decrypt(string)
    plain_text = string.split("").map do |letter|
      index = alphabet.find_index(letter) - 5
      if index >= 0
        alphabet[index]
      else
        alphabet[alphabet.length + index]
      end
    end
    plain_text.join
  end
end

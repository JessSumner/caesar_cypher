require_relative 'application_helper'
class Decryption
  def decrypt(string, shift=5)
    plain_text = string.split("").map do |letter|
      index = characters.find_index(letter) - shift
      if index >= 0
        characters[index]
      else
        characters[characters.length + index]
      end
    end
    plain_text.join
  end
end

def alphabet
  alphabet = ("a".."z").to_a
end

def symbols
  symbols = [" ",",",".","/","?",";",":","'","(",")"]
end

def numbers
  numbers = ("0".."9").to_a
end

def characters
  alphabet + symbols + numbers
end

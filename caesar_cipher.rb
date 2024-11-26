def caesar_cipher (string, num)
  cap = ("A".."Z").to_a
  no_cap = ("a".."z").to_a
  array = string.split("")
  modified_array = array.map do |letter|
    if cap.include?(letter) == true
      cap[(cap.index(letter)+ num) % 25]
    elsif no_cap.include?(letter) == true
      no_cap[(no_cap.index(letter)+ num) % 25]
    else
      letter
    end
  end
  modified_array.join
end

puts caesar_cipher("Abcd!", 2)
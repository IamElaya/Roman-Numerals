@Numbers = [
[1000, "M"],
[500, "D"],
[100, "C"],
[90, "XC"],
[50, "L"],
[10, "X"],
[5, "V"],
[1, "I"]
]



def to_roman(num)
  # Your code here
  roman_number = ""

  @Numbers.each do |pair|
    value = pair[0]
    letter = pair[1]
    roman_number += letter * (num / value)
    num = num % value
  end
  return roman_number
end
 
# Drive code... this should print out trues.
 
puts to_roman(1) == "I"
puts to_roman(3) == "III"
puts to_roman(6) == "VI"
 
# TODO: what other cases could you add to ensure your to_roman method is working?

puts to_roman(559)
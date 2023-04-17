def translate(string)
  if string.split.size > 1
    return string.split.map { |elem| translate(elem) }.join(" ")
  elsif string.start_with?(/a|e|i|o|u|y/)
    return string + "ay"
  elsif string.start_with?(
        /[[b-z]&&[^a|e|i|o|u|y]][[b-z]&&[^a|e|i|o|y]][[b-z]&&[^a|e|i|o||y]]/
      )
    return string.delete(string[0..2]) + string[0..2] + "ay"
  elsif string.start_with?(/[[b-z]&&[^a|e|i|o|u|y]][[b-z]&&[^a|e|i|o||y]]/)
    return string.delete(string[0..1]) + string[0..1] + "ay"
  elsif string.start_with?(/[[b-z]&&[^a|e|i|o|u|y]]/)
    return string.delete(string[0]) + string[0] + "ay"
  end
end

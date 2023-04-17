def echo(string)
  return string
end

def shout(string)
  return string.upcase
end

def repeat(string, nb = 2)
  return nb < 3 ? string + " " + string : ((string + " ") * nb).rstrip
end

def start_of_word(string, nb = 1)
  return string[0..(nb - 1)]
end

def first_word(string)
  return string.split.first
end

def titleize(string)
  nocaps = %w[and the or to a but]
  string
    .split
    .map
    .with_index do |word, i|
      nocaps.include?(word) && i != 0 ? word : word.capitalize
    end
    .join(" ")
end

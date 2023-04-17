def who_is_bigger(a, b, c)
  return "nil detected" if a == nil || b == nil || c == nil
  if a >= b and a >= c
    "a is bigger"
  elsif b >= c and b >= a
    "b is bigger"
  else
    "c is bigger"
  end
end

def reverse_upcase_noLTA(string)
  string.reverse.upcase.delete("LTA")
end

def array_42(array)
  return array.count(42) > 0 ? true : false
end

def magic_array(a)
  a.flatten.sort.map { |elem| elem * 2 }.delete_if { |i| i % 3 == 0 }.uniq
end

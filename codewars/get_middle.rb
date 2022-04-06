def get_middle(s)
  if s.length % 2 == 0
    s[s.length/2-1..s.length/2]
  else
    s[s.length/2]
  end
end
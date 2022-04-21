let safe_div a b =
  if b = 0.0 then
    None
  else
    Some (a /. b)
